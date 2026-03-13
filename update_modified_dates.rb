#!/usr/bin/env ruby

require 'yaml'
require 'date'
require 'time'

def parse_date(value)
  return nil if value.nil? || value.to_s.strip.empty?

  Date.parse(value.to_s)
rescue
  nil
end

def extract_front_matter(content)
  # Check if file starts with YAML front matter
  return nil, content unless content.start_with?('---')
  
  # Find the closing --- of front matter
  lines = content.lines
  end_index = lines[1..-1].find_index { |line| line.strip == '---' }
  return nil, content unless end_index
  
  # Extract front matter and content
  front_matter_lines = lines[1..end_index]
  content_lines = lines[(end_index + 2)..-1] || []
  
  begin
    front_matter = YAML.safe_load(
      front_matter_lines.join,
      permitted_classes: [Date, Time],
      aliases: true
    )
    content_body = content_lines.join
    return front_matter, content_body
  rescue => e
    puts "Error parsing YAML in file: #{e.message}"
    return nil, content
  end
end

def get_git_last_modified(file_path)
  # Get the last commit date for this file
  result = `git log -1 --format="%ct" -- "#{file_path}" 2>/dev/null`.strip
  return nil if result.empty? || !result.match?(/^\d+$/)
  
  Time.at(result.to_i)
end

def extract_date_from_filename(filename)
  # Extract date from Jekyll post filename format: YYYY-MM-DD-title.md
  match = filename.match(/^(\d{4}-\d{2}-\d{2})/)
  return nil unless match
  
  begin
    Date.parse(match[1])
  rescue
    nil
  end
end

def process_post(file_path)
  puts "Processing: #{file_path}"
  
  # Read file content
  begin
    content = File.read(file_path)
  rescue => e
    puts "  Error reading file: #{e.message}"
    return
  end
  
  # Extract front matter
  front_matter, content_body = extract_front_matter(content)
  unless front_matter
    puts "  Skipping: No valid YAML front matter found"
    return
  end
  
  # Get published date from front matter or filename
  published_date = nil
  if front_matter['date']
    published_date = parse_date(front_matter['date'])
  end
  
  unless published_date
    filename = File.basename(file_path)
    published_date = extract_date_from_filename(filename)
  end
  
  unless published_date
    puts "  Skipping: Could not determine published date"
    return
  end
  
  # Get Git last modified date
  git_modified = get_git_last_modified(file_path)
  unless git_modified
    puts "  Skipping: Could not get Git modification date"
    return
  end
  
  git_modified_date = git_modified.to_date
  current_modified_date = parse_date(front_matter['last_modified_at'])
  
  # Only add or update last_modified_at if Git date is after published date
  if git_modified_date <= published_date
    puts "  Skipping: Git modified date (#{git_modified_date}) is not after published date (#{published_date})"
    return
  end

  if current_modified_date && git_modified_date <= current_modified_date
    puts "  Skipping: Existing last_modified_at (#{current_modified_date}) is newer or equal"
    return
  end
  
  # Add or update last_modified_at in front matter
  front_matter['last_modified_at'] = git_modified_date
  
  # Reconstruct the file content
  new_content = "---\n"
  new_content += front_matter.to_yaml.sub(/^---\n/, '')
  new_content += "---\n"
  new_content += content_body
  
  # Write back to file
  begin
    File.write(file_path, new_content)
    action = current_modified_date ? "Updated" : "Added"
    puts "  ✓ #{action} last_modified_at: #{git_modified_date}"
  rescue => e
    puts "  Error writing file: #{e.message}"
  end
end

def main
  # Find all posts
  posts_pattern = File.join('_posts', '**', '*.md')
  post_files = Dir.glob(posts_pattern)
  
  if post_files.empty?
    puts "No post files found in _posts directory"
    exit 1
  end
  
  puts "Found #{post_files.length} post files"
  puts "=" * 50
  
  processed = 0
  updated = 0
  
  post_files.each do |file_path|
    content_before = File.read(file_path) rescue ""
    process_post(file_path)
    content_after = File.read(file_path) rescue ""
    
    processed += 1
    updated += 1 if content_before != content_after
  end
  
  puts "=" * 50
  puts "Processed: #{processed} files"
  puts "Updated: #{updated} files"
end

# Check if we're in a Git repository
unless Dir.exist?('.git')
  puts "Error: This script must be run from the root of a Git repository"
  exit 1
end

# Check if _posts directory exists
unless Dir.exist?('_posts')
  puts "Error: _posts directory not found. Run this script from your Jekyll site root."
  exit 1
end

main
