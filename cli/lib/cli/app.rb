require 'thor'
require 'cli'

module Cli
  class App < Thor
    desc :list, "Lists bookmarks"
    def list
      list = ListBookmarks.new.list
      list.each do |bookmark|
        puts bookmark.title, bookmark.url
      end
    end
  end
end