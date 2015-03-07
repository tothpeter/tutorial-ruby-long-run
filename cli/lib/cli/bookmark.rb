class Bookmark
  attr_reader :id, :title, :url
  def initialize options
    @title = options["title"]
    @url = options["url"]
    if options["id"]
      @id = options["id"]
    end
  end
end