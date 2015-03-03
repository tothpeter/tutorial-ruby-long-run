##
# This class allows users to list all of their bookmarks. It consits of a
# single method that retrives an array of {Bookmark} objects.
# 
class ListBookmarks
  ##
  # The main method of the service. Retrives a lsit of bookmarks.
  # 
  # @return Array
  def self.list
    Bookmark.all.to_a
  end
end