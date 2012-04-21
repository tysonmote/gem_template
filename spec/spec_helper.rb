require 'bundler'
Bundler.require
require 'pry'

RSpec.configure do |config|
  # Copied from Foreman https://github.com/ddollar/foreman
  def read_enviornment
    return unless File.exist?('.env')
    File.read('.env').split("\n").each do |line|
      if line =~ /\A([A-Za-z_0-9]+)=(.*)\z/
        key, val = [$1, $2]
        case val
          when /\A'(.*)'\z/ then ENV[key] = $1
          when /\A"(.*)"\z/ then ENV[key] = $1.gsub(/\\(.)/, '\1')
          else ENV[key] = val
        end
      end
    end
  end

  config.before :suite do
    read_enviornment
  end

  config.before :each do

  end
end
