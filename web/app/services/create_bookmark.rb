class CreateBookmark < Service
  attr_reader :bookmark, :data

  def initialize data
    @data = data
  end

  def create
    response = request "/bookmarks", :post, body: post_data
    @bookmark = Bookmark.new response.to_h

    response.code.to_i
  end

  private 
  
  def post_data
    { bookmark: @data }
  end
end