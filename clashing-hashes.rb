require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'twitter'
require_relative 'lib/twitter.rb'


get '/' do
  @show_description = false
  erb :index
  
end

post '/twitter' do

  erb :twitter
end
