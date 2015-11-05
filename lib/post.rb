class Post
  attr_reader :title, :post, :date  
  def initialize title, post
    @title = title
    @post = post
    @date = Time.now
  end
  def show_in_strftime
    @date.strftime("%d/%m/%Y -- %H:%M")
  end
end