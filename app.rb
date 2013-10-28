require 'rubygems'
require 'sinatra'

get '/' do
  "Choose a Ninja"
end

get '/my_ninja' do
  erb :my_ninja
end