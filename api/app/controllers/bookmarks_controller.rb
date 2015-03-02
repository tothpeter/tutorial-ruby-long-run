class BookmarksController < ApplicationController
  def index
    @bookmarks = ListBookmarks.list
    render json: @bookmarks.to_json
  end

  def create

    begin
      @bookmark = CreateBookmark.new(bookmark_params).create
    rescue ActionController::ParameterMissing => e
      return head 422
    end

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
