require 'minitest_helper'
require 'cli/services/create_bookmark'

describe CreateBookmark do
  it "creates a bookmark" do
    service = CreateBookmark.new title: "Bookmark", url: "http://tomaaa.com"
    service.create.must_equal true
  end

  it "retrives the new bookmark" do
    service = CreateBookmark.new title: "Bookmark", url: "http://tomaaa.com"
    service.create
    service.bookmark.id.must_be_kind_of Numeric
  end
end