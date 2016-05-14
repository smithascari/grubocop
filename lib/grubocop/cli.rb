require 'optparse'
require 'grubocop/version'
require 'grubocop/analyzer'

module Grubocop
  class CLI
    def self.read(arguments = ARGV)
      options = {}
      optparse = OptionParser.new do |opts|
        opts.on('-h', '--help', 'Show grubocop options') do
          puts opts
          exit
        end
        opts.on('-v', '--version', 'Show current grubocop version') do
          puts Grubocop::VERSION
          exit
        end
        opts.on('-b', '--branch TARGET_BRANCH', 'Inspect touched between current and target branches') do |target_branch|
          options[:target_branch] = target_branch
        end
      end
      optparse.parse!(arguments)
      fail 'Target branch cannot be empty' unless options[:target_branch]
      options
    end
  end
end
