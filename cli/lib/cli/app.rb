require 'thor'
require 'cli'

module Cli
  ##
  # This Thor app is responsible for providing the interface to the commandline user
  # 
  # @example Listing bookmarks
  # 
  #  dainty list
  #  
  # @example Creating a bookmark
  # 
  #  dainty create --title "My Bookmark" --url "http://tomaaa.com"
  class App < Thor
    desc :list, "Lists bookmarks"
    def list
      list = ListBookmarks.new.list
      puts "# List of bookmarks"
      list.each do |bookmark|
        puts bookmark.title, bookmark.url
      end

      if list.empty?
        puts "You have no bookmarks."
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

    desc :update, "Updates a bookmark"
    option :id, required: true
    option :title
    option :url
    def update
      service = UpdateBookmark.new(
        id: options[:id],
        title: options[:title],
        url: options[:url]
      )

      if service.update
        puts "Updated bookmark, it is now '#{options[:title]}'."
      end
    end

    desc :remove, "Removes a bookmark"
    def remove id
      service = RemoveBookmark.new id

      if service.remove
        puts "Removed bookmark."
      end
    end
  end
end