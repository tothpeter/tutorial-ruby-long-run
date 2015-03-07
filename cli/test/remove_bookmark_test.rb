require 'minitest_helper'
require 'cli/services/remove_bookmark'

module Cli
  describe RemoveBookmark do
    it "removes an existing bookmark" do
      service = RemoveBookmark.new id: 980191245
      service.remove.must_equal true
    end
  end
end