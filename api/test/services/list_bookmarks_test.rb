require "test_helper"
require "minitest/spec"

describe ListBookmarks do
  it "retrieves the list of bookmarks" do
    ListBookmarks.list.must_be_kind_of Array
  end
end