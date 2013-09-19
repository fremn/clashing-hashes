require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'
require 'twitter'
require_relative 'lib/follower_clash'


get '/' do
  @show_description = false
  erb :index
  
end

post '/twitter' do
  @user1  = FollowerClash::User.new(params["login1"])
  @user2  = FollowerClash::User.new(params["login2"])

  @result = FollowerClash::Comparer.new(@user1, @user2).compare

  erb :result
end
