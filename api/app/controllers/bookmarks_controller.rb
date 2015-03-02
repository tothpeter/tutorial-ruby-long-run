class BookmarksController < ApplicationController
  def index
    @bookmarks = ListBookmarks.list
    render json: @bookmarks.to_json
  end

  def create
    @bookmark = CreateBookmark.new(bookmark_params).create

    if @bookmark
      head 201
    else
      head 422
    end
  end

  private 
  
  def bookmark_params
    params.require(:bookmark).permit(:title, :url)
  end
end
