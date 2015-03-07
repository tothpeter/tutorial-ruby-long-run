class BookmarksController < ApplicationController
  def index
    @bookmarks = ListBookmarks.list
    render json: @bookmarks.to_json
  end

  def create

    begin
      @service = CreateBookmark.new bookmark_params
    rescue ActionController::ParameterMissing => e
      return head 422
    end

    if @service.create
      render json: @service.bookmark, status: 201
    else
      head 422
    end
  end

  def update
    # data = bookmark_params
    # data[:id] = params[:id]

    service = UpdateBookmark.new params[:id], bookmark_params

    if service.update
      head 204
    else
      head 422
    end
  end

  def destroy
    service = RemoveBookmark.new id: params[:id]

    if service.remove
      head 204
    else
      head 422
    end
  end

  private 
  
  def bookmark_params
    params.require(:bookmark).permit(:title, :url)
  end
end
