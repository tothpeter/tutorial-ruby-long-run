class CreateBookmark < Service
  attr_reader :bookmark

  def initialize data
    @title = data[:title]
    @url = data[:url]
  end

  def create
    response = request "/bookmarks", :post, body: post_data
    @bookmark = Bookmark.new response.to_h
    response.code == 201
  end

  private 
  
  def post_data
    {
      bookmark: {
        title: @title,
        url: @url
      }
    }
  end
end