module Cli
  class RemoveBookmark < Service
    def initialize options
      @id = options[:id]
    end

    def remove
      response = request "/bookmarks/#@id", :delete
      response.code == 204
    end
  end
end