require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'lib/twitter.rb'

get '/' do
  @show_description = false
  erb :index
  
end

post '/twitter' do

  erb :twitter
  @tweets = []
  @tweets << status: "I like pie"
end
