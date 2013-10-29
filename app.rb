require 'rubygems'
require 'sinatra'
require 'active_record'
require_relative './app/models/ninja.rb'

ActiveRecord::Base.establish_connection(adapter: 'postgresql',
                                        database: 'sinatra_skeleton_dev')

get '/' do
  erb :index
end

post '/' do
  @my_ninja = Ninja.create( {persona: params[:persona], weapon: params[:weapon], strength: params[:strength]} )

  erb :my_ninja
end

get '/my_ninja' do
  erb :my_ninja
end