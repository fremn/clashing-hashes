require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @name = 'Fremen'
  @naam = "Karinn"
  @show_description = false
  erb :index
  
end

post '/twitter' do

  
  

end
