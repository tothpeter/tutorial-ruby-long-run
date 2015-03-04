require "test_helper"
require "minitest/spec"


describe UpdateBookmark do
  it "updates a bookmark" do
    bookmark = Bookmark.create! title: "Bookmark name", url: "http://tomaaa.com"
    service = UpdateBookmark.new bookmark.id, {title: "Bookmark2", url: "http://tomaaa.hu"}
    
    service.update
    service.bookmark.title.must_equal "Bookmark2"
    service.bookmark.url.must_equal "http://tomaaa.hu"

    assert CreateBookmark.new({ title: "Tomaaa.com", url: "http://tomaaa.com"}).create
  end

  it "fails to create a bookmark if there's no id" do
    refute UpdateBookmark.new(nil, {}).update
  end
end