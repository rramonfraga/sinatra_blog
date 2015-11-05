require 'sinatra'
require 'sinatra/reloader'
#require 'pry'
require_relative './lib/Blog.rb'
require_relative './lib/Post.rb'


#enable(:sessions)
my_blog = Blog.new
my_blog.add_post(Post.new "Week one", "It was phantastic!","Bio","Rata")
my_blog.add_post(Post.new "Week two", "It's being phantastic too!","Bio","Rata")
my_blog.add_post(Post.new "Week three", "It will be super phantastic!","Bio","Rata")


get "/" do
  redirect("/homepage")
end

get "/homepage" do
  @posts = my_blog.latest_posts
  erb(:homepage)
end

get "/post_details/:index" do 
  @post = my_blog.latest_posts[params[:index].to_i]
  erb(:postdetails)
end

get "/new_post" do 
  erb(:newpost)  
end


post "/????" do
  new_post = Post.new(params[:title], params[:post], params[:category], params[:author])
  my_blog.add_post new_post
  redirect("/homepage")
end
