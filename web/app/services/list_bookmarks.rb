class ListBookmarks < Service
  def list
    response = request "/bookmarks"
    response.map do |item|
      Bookmark.new item
    end
  end
end