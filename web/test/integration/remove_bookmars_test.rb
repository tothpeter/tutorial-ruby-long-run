require "test_helper"

describe "Removing a bookmark" do
  it "removes a bookmarks" do
    bookmark = spawn_bookmark
    id = bookmark.id

    visit "/"
    page.find("#bookmark-#{id}").click_button "Delete"

    page.wont_have_selector "#bookmark-#{id}"
    page.status_code.must_equal 200
  end
end