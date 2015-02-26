ENV['SINATRA_ENV'] ||= "development"
require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

# requiring the app.rb file:
require './app'

require_all 'models'