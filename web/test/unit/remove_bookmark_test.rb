require 'test_helper'
require 'services/remove_bookmark'

module Cli
  describe RemoveBookmark do
    it "removes a bookmark" do
      bookmark = spawn_bookmark

      id = bookmark.id

      service = RemoveBookmark.new id
      service.remove.must_equal 204
    end
  end
end