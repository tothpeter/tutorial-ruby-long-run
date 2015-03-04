require "test_helper"
require "minitest/spec"


describe RemoveBookmark do
  it "removes a bookmark" do
    bookmark = Bookmark.create! title: "Bookmark name", url: "http://tomaaa.com"
    service = RemoveBookmark.new id: bookmark.id
    
    service.remove.must_equal true
  end
end