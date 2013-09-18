require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
@name = 'Fremen'
@naam = "Karinn"

  erb :index
  
end
