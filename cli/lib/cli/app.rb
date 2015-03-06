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

    desc :create, "Creates a bookmark"
    option :title, required: true
    option :url, required: true
    def create
      service = CreateBookmark.new title: options[:title], url: options[:url]
      if service.create
        puts "Created bookmark for '#{options[:title]}'."
      end
    end
  end
end