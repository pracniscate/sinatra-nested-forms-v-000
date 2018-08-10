ENV['SINATRA_ENV'] ||= "development"

require 'bundler'
Bundler.require(:default, ENV['SINATRA_ENV'])

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['Sinatra_ENV']}.sqlite"
)

require 'sinatra/base'
require 'sinatra/reloader'

require_all './app'
