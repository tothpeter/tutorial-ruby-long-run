require 'test_helper'

describe CreateBookmark do
  it "creates a new bookmark" do
    service = CreateBookmark.new title: "Bookmark", url: "http://tomaaa.com"
    service.create.must_equal 201
  end

  it "retrives the new bookmark" do
    service = CreateBookmark.new title: "Bookmark", url: "http://tomaaa.com"
    service.create
    service.bookmark.id.must_be_kind_of Numeric
  end
end