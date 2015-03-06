require "httparty"

class CreateBookmark
  def initialize data
    @title = data[:title]
    @url = data[:url]
  end

  def create
    response = HTTParty.post "http://localhost:3000/bookmarks", body: {
      bookmark: {
        title: @title,
        url: @url
      }
    }

    response.code == 201
  end
end