class Bookmark
  attr_reader :title, :url
  def initialize options
    @title = options["title"]
    @url = options["url"]
  end
end