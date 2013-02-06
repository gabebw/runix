$LOAD_PATH << File.dirname(__FILE__)

require 'bundler/setup'
require 'rspec'
require 'runix'

Dir["spec/support/**/*.rb"].each { |f| require File.expand_path(f) }
