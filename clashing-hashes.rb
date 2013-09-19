require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'twitter'
require_relative 'lib/twitter.rb'
require_relative 'lib/follower_clash'


get '/' do
  @show_description = false
  erb :index
  
end

post '/twitter' do
  @user1  = params["login1"]
  @user2  = params["login2"]
  @result = FollowerClash::Comparer.new(@user1, @user2)

  erb :result
end
