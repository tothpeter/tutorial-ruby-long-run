require 'minitest_helper'
require 'cli/services/create_bookmark'

describe CreateBookmark do
  it "creates a bookmark" do
    service = CreateBookmark.new title: "Bookmark", url: "http://tomaaa.com"
    service.create.must_equal true
  end
end