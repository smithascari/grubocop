require 'rubocop'

module Grubocop
  class Analyzer
    def self.execute(options)
      analyzer = new(options)
      all_files = analyzer.touched_files_on_branch

      return if all_files.empty?
      analyzer.check(all_files)
    rescue
      analyzer.check
    end

    def initialize(options)
      @options = options
    end

    def check(paths = [])
      paths = paths.join(' ')
      exec "rubocop #{paths}"
    end

    def touched_files_on_branch
      raise 'No target branch specified!' if @options[:target_branch].blank?

      files = `git diff --diff-filter=ACMR --name-only #{@options[:target_branch]}`
      files.split("\n").select { |file| ruby_file?(file) }
    end

    def ruby_file?(file)
      File.extname(file) == '.rb'
    end
  end
end
