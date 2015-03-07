module Cli
  class UpdateBookmark < Service
    def initialize options
      @id = options[:id]
      @title = options[:title]
      @url = options[:url]
    end

    def update
      response = request "/bookmarks/#{@id}", :put, body: data
      response.code == 204
    end

    def data
      {
        bookmark: {
          title: @title,
          url: @url
        }
      }
    end
  end
end