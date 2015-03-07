class App < Sinatra::Base
  get "/" do
    @bookmarks = ListBookmarks.new.list
    haml :index
  end

  post "/bookmarks" do
    service = CreateBookmark.new params[:bookmark]
    service.create

    redirect "/"
  end
end