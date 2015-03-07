class App < Sinatra::Base
  get "/" do
    @bookmarks = ListBookmarks.new.list
    haml :index
  end
end