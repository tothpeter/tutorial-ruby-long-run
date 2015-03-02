require "test_helper"
require "minitest/spec"


describe CreateBookmark do
  it "creates a bookmark" do
    assert CreateBookmark.new({ title: "Tomaaa.com", url: "http://tomaaa.com"}).create
  end

  it "fails to create a bookmark if there's no data" do
    refute CreateBookmark.new({}).create
  end
end