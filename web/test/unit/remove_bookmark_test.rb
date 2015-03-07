require 'test_helper'
require 'services/remove_bookmark'

module Cli
  describe RemoveBookmark do
    it "removes a bookmark" do
      create_service = CreateBookmark.new title: "Removable", url: "http://tomaaa.com"
      create_service.create

      id = create_service.bookmark.id

      service = RemoveBookmark.new id
      service.remove.must_equal 204
    end
  end
end