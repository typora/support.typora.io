#!/usr/bin/env ruby

require 'yaml'
require 'date'
require 'fileutils'

ROOT = __dir__
CONFIG_PATH = File.join(ROOT, '_config.yml')
DEFAULT_OUTPUT_PATH = File.join(ROOT, 'llms.txt')

SECTION_TITLES = {
  'core' => 'Core Pages',
  'new' => "What's New",
  'basic' => 'Quick Start',
  'purchase' => 'Purchase & Activation',
  'how-to' => 'How-To Guides',
  'reference' => 'Reference',
  'announcement' => 'Announcements',
  'ja' => 'Japanese Translation',
  'zh' => 'Chinese Translation',
  'other' => 'Other Pages'
}.freeze

SECTION_ORDER = SECTION_TITLES.keys.freeze

Doc = Struct.new(:section, :title, :url, :summary, keyword_init: true)

def parse_front_matter(path)
  content = File.read(path)
  return [{}, content] unless content.start_with?('---')

  lines = content.lines
  closing_index = lines[1..].find_index { |line| line.strip == '---' }
  return [{}, content] unless closing_index

  front_matter = YAML.safe_load(
    lines[1..closing_index].join,
    permitted_classes: [Date, Time],
    aliases: true
  ) || {}

  body = lines[(closing_index + 2)..] || []
  [front_matter, body.join]
end

def normalize_path(path)
  return '/' if path.nil? || path.empty?

  normalized = path.start_with?('/') ? path : "/#{path}"
  normalized.gsub!(%r{/+}, '/')
  normalized
end

def absolute_url(site_url, path)
  "#{site_url.sub(%r{/+$}, '')}#{normalize_path(path)}"
end

def post_url(path, front_matter)
  permalink = front_matter['permalink']
  return normalize_path(permalink) if permalink

  slug = File.basename(path, File.extname(path)).sub(/^\d{4}-\d{2}-\d{2}-/, '')
  "/#{slug}/"
end

def root_page_url(path, front_matter)
  permalink = front_matter['permalink']
  return normalize_path(permalink) if permalink

  basename = File.basename(path)
  return '/' if basename == 'index.html'

  "/#{basename}"
end

def detect_section(path, front_matter)
  permalink = front_matter['permalink'].to_s
  return 'ja' if permalink.start_with?('/ja/') || path.include?('/ja/')
  return 'zh' if permalink.start_with?('/zh/') || path.include?('/zh/')

  category = front_matter['category'].to_s
  return category if SECTION_TITLES.key?(category)

  folder = path.sub(%r{\A#{Regexp.escape(ROOT)}/?}, '').split('/')[1]
  return folder if SECTION_TITLES.key?(folder)

  front_matter['homepage'] ? 'core' : 'other'
end

def clean_text(text)
  cleaned = text.dup
  cleaned.gsub!(%r{<[^>]+>}, ' ')
  cleaned.gsub!(%r{\{\%.*?\%\}}m, ' ')
  cleaned.gsub!(%r{\{\{.*?\}\}}m, ' ')
  cleaned.gsub!(%r/\{:[^}]+\}/, ' ')
  cleaned.gsub!(%r{!\[[^\]]*\]\([^)]+\)}, ' ')
  cleaned.gsub!(%r{\[([^\]]+)\]\([^)]+\)}, '\1')
  cleaned.gsub!(%r{`{1,3}[^`]+`{1,3}}, ' ')
  cleaned.gsub!(%r{[#>*_~-]}, ' ')
  cleaned.gsub!(/\s+/, ' ')
  cleaned.strip
end

def extract_summary(body)
  sanitized = body.gsub(%r{```.*?```}m, ' ')
  paragraphs = sanitized.split(/\n\s*\n+/).map(&:strip)

  paragraphs.each do |paragraph|
    next if paragraph.empty?
    next if paragraph.start_with?('{%')
    next if paragraph.lines.first.to_s.start_with?('#')
    next if paragraph.include?('{:toc}')
    next if paragraph.include?('document.querySelector')
    next if paragraph.include?('{% for')

    summary = clean_text(paragraph)
    next if summary.empty?
    next if summary.length < 35
    next if summary =~ %r{\A(?:English Original Version|日本語|中文|Help Improve the Translation)}

    return summary[0, 180].sub(/\s+\S*\z/, '') if summary.length > 180
    return summary
  end

  nil
end

def collect_root_pages(site_url)
  Dir.glob(File.join(ROOT, '*.{html,md}')).filter_map do |path|
    next if File.basename(path) == 'llms.txt'

    front_matter, body = parse_front_matter(path)
    next if front_matter.empty?

    title = front_matter['title'].to_s.strip
    next if title.empty?

    Doc.new(
      section: detect_section(path, front_matter),
      title: title,
      url: absolute_url(site_url, root_page_url(path, front_matter)),
      summary: nil
    )
  end
end

def collect_posts(site_url)
  Dir.glob(File.join(ROOT, '_posts', '**', '*.md')).filter_map do |path|
    front_matter, body = parse_front_matter(path)
    next if front_matter['draft']

    title = front_matter['title'].to_s.strip
    next if title.empty?

    Doc.new(
      section: detect_section(path, front_matter),
      title: title,
      url: absolute_url(site_url, post_url(path, front_matter)),
      summary: extract_summary(body)
    )
  end
end

def build_output(site_name, site_url, description, docs)
  lines = []
  lines << "# #{site_name}"
  lines << ""
  lines << "> #{description}" unless description.to_s.strip.empty?
  lines << ""
  lines << "- Base URL: #{site_url}"
  lines << "- Format: Markdown index for LLM-friendly site discovery"
  lines << ""

  grouped = docs.group_by(&:section)
  SECTION_ORDER.each do |section|
    items = grouped[section]
    next if items.nil? || items.empty?

    lines << "## #{SECTION_TITLES.fetch(section)}"
    lines << ""
    items.sort_by(&:title).each do |doc|
      line = "- [#{doc.title}](#{doc.url})"
      line += " - #{doc.summary}" if doc.summary
      lines << line
    end
    lines << ""
  end

  lines.join("\n").rstrip + "\n"
end

abort('Run this script from the repository root.') unless File.exist?(CONFIG_PATH)

config = YAML.safe_load(File.read(CONFIG_PATH), permitted_classes: [Date, Time], aliases: true) || {}
site_name = config.fetch('name', 'Website')
site_url = config.fetch('url')
description = config['description']
output_path = if ARGV[0]
  File.expand_path(ARGV[0], ROOT)
else
  DEFAULT_OUTPUT_PATH
end

docs = collect_root_pages(site_url) + collect_posts(site_url)
FileUtils.mkdir_p(File.dirname(output_path))
File.write(output_path, build_output(site_name, site_url, description, docs))

puts "Generated #{output_path}"
