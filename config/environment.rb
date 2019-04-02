ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require './app'
require_relative '../models/piglatinizer.rb'#new line 7
#WAS/ old line 7: require_all '/models'
