require 'test_helper'

class BookmarksControllerTest < ActionController::TestCase
  test "returns ok status if bookmark is created" do
    post :create, bookmark: { title: "Tomaaa.com", url: "tomaaa.com" }

    assert_response 201
  end

  test "returns not ok if bookmark is not created" do
    post :create, bookmark: { }
    # post :create, bookmark: { title: nil, url: nil }

    assert_response 422
  end

  test "returns ok if a record is updated" do
    bookmark = Bookmark.create! title: "Bookmark name", url: "http://tomaaa.com"
    
    put :update, id: bookmark.id, bookmark: { title: "Title" }

    assert_response 204 # No content
  end
end
