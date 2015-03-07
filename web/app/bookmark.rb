class Bookmark
  attr_reader :id, :title, :url
  def initialize options
    @id = options["id"]
    @title = options["title"]
    @url = options["url"]
  end
end