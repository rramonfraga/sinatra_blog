require 'sinatra'
#require 'sinatra/reloader'
#require 'pry'


get "/" do
  "hello world"
end

get "/real_page" do
  "Welcome to the real page"
end

get "/hi" do
  redirect('/real_page')
end