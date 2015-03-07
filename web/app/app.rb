require "bookmark"
require "services/base"
require "services/list_bookmarks"
require "services/create_bookmark"
require "services/remove_bookmark"

class App < Sinatra::Base
  use Rack::MethodOverride

  get "/" do
    @bookmarks = ListBookmarks.new.list
    haml :index
  end

  post "/bookmarks" do
    service = CreateBookmark.new params[:bookmark]
    service.create

    redirect "/"
  end

  delete "/bookmarks/:id" do
    service = RemoveBookmark.new params[:id]
    service.remove

    redirect "/"
  end
end