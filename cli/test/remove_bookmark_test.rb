require 'minitest_helper'
require 'cli/services/remove_bookmark'

module Cli
  describe RemoveBookmark do
    it "removes an existing bookmark" do
      create_service = CreateBookmark.new title: "Removable", url: "http://tomaaa.com"
      create_service.create

      service = RemoveBookmark.new create_service.bookmark.id
      service.remove.must_equal true
    end
  end
end