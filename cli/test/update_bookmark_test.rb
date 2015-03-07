require 'minitest_helper'
require 'cli/services/update_bookmark'

module Cli
  describe UpdateBookmark do
    it "updates an existing bookmark" do
      service = UpdateBookmark.new id: 980191121, title: "AE Tuts", url: "http://tomaaa.hu"
      service.update.must_equal true
    end
  end
end