require 'sinatra/base'
require './lib/bookmarks.rb'

class BookmarkManager < Sinatra::Base

  enable :sessions

  get '/' do
    @bookmarks = Bookmarks.all
    erb(:bookmarks)
  end

  post '/add_link' do
    Bookmark.create(url: params[:add_link])
    redirect '/bookmarks/new'
  end

  get '/bookmarks/new' do
    @bookmark_new = session[:url]
    erb :add_bookmark
  end


  run! if app_file == $0
end
