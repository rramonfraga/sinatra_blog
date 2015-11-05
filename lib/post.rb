class Post
  attr_reader :title, :post, :category, :author, :date  
  def initialize title, post, category, author, date = Time.now
    @title = title
    @post = post
    @category = category
    @author = author
    @date = date
  end
  def show_in_strftime
    @date.strftime("%d/%m/%Y -- %H:%M")
  end

end