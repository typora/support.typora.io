require 'shellwords'

module Jekyll
  class GitModifiedGenerator < Generator
    def generate(site)
      return unless File.exist?('.git')
      
      site.posts.docs.each do |post|
        # Get the file path relative to the site source
        file_path = post.relative_path
        
        # Escape the file path for shell command and check if file exists in git
        escaped_path = Shellwords.escape(file_path)
        
        # First check if the file exists in git
        file_exists = system("git ls-files --error-unmatch #{escaped_path} > /dev/null 2>&1")
        
        if file_exists
          # Get the last modification date from git
          last_modified_at = `git log -1 --pretty="format:%ct" #{escaped_path} 2>/dev/null`.strip
          
          if last_modified_at && !last_modified_at.empty? && last_modified_at =~ /^\d+$/
            post.data['last_modified_at'] = Time.at(last_modified_at.to_i)
          end
        else
          # If file doesn't exist in git, fall back to file system modification time
          if File.exist?(File.join(site.source, file_path))
            post.data['last_modified_at'] = File.mtime(File.join(site.source, file_path))
          end
        end
      end
    end
  end
end