require "httparty"
require "cli/bookmark"

class ListBookmarks
  def list
    response = HTTParty.get "http://localhost:3000/bookmarks"
    response.map do |item|
      Bookmark.new item
    end
  end
end