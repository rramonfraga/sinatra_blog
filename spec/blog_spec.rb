require_relative '../lib/blog.rb'
require_relative '../lib/post.rb'

RSpec.describe "Blog" do
  before :each do
    @blog = Blog.new
    @post = Post.new "title", "post" 
  end

  describe "#add_post" do 
    it "should return [post] when you enter the a post in a new blog" do 
      post = Post.new "title", "post" 
      expect(@blog.add_post(post)).to eq([post]) 
    end
  end
  
  describe "#latest_posts" do
    it "should return post ordered" do
      @blog.add_post @post
      post2 = Post.new "title2", "post2"
      @blog.add_post post2
      my_post = @blog.latest_posts
      expect(my_post[0]).to eq(post2) 
    end
  end


end