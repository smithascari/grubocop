require 'optparse'
require 'grubocop/version'
require 'grubocop/analyzer'

module Grubocop
  class CLI
    def self.read(arguments = ARGV)
      options = {}
      options[:target_branch] = ARGV[0]

      optparse = OptionParser.new do |opts|
        opts.on('-h', '--help', 'Show grubocop options') do
          puts opts
          exit
        end
        opts.on('-v', '--version', 'Show current grubocop version') do
          puts Grubocop::VERSION
          exit
        end
      end
      optparse.parse!(arguments)
      options
    end
  end
end
