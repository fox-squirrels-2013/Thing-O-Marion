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
  p params[:persona].length > 0
  if params[:persona].length > 0
    @my_ninja = Ninja.create( {persona: params[:persona], weapon: params[:weapon], strength: params[:strength]} )
  elsif params[:persona_update].length > 0
    change_ninja = Ninja.find_by(persona: params[:persona_update])
    change_ninja.update( weapon: params[:weapon_update] )
  elsif params[:persona_delete].length > 0
    dead_ninja = Ninja.find_by(persona: params[:persona_delete])
    dead_ninja.destroy()
  end
  erb :my_ninja
end

get '/my_ninja' do
  erb :my_ninja
end