module Cli
  class RemoveBookmark < Service
    def initialize id
      @id = id
    end

    def remove
      response = request "/bookmarks/#@id", :delete
      response.code == 204
    end
  end
end