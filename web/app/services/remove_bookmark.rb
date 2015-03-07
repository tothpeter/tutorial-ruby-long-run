class RemoveBookmark < Service
  def initialize id
    @id = id
  end

  def remove
    response = request "/bookmarks/#@id", :delete
    response.code.to_i
  end
end