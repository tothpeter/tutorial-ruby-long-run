require "test_helper"
require "minitest/spec"


describe CreateBookmark do
  it "creates a bookmark" do
    assert CreateBookmark.new({ title: "Tomaaa.com", url: "http://tomaaa.com"}).create
  end
end