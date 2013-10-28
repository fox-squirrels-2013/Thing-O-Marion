require 'rubygems'
require 'sinatra'
require 'active_record'

ActiveRecord::Base.establish_connection(adapter: 'postgresql')

get '/' do
  "Choose a Ninja"
end

get '/my_ninja' do
  erb :my_ninja
end