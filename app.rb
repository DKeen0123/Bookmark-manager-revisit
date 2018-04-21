require 'sinatra/base'

class BookmarkManager < Sinatra::Base
    get '/' do
        'Hello World'
    end

    get '/bookmarks' do
         bookmarks = [
            "http://makersacademy.com",
            "http://destroyallsoftware.com",
            "http://facebook.com"
           ]

    bookmarks.join
    end

    run! if app_file == $0
end