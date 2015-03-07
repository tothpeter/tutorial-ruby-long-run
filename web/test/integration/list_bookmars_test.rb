require "test_helper"

describe "List Bookmarks" do
  it "prints the list of bookmarks" do
    visit "/"
    page.must_have_selector "li.bookmark"
  end
end