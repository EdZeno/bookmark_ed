require 'sinatra/base'
require './lib/bookmarks.rb'

class BookmarkManager < Sinatra::Base


  get '/bookmarks' do
    @bookmarks = Bookmarks.all
    erb(:bookmarks)
  end

  get '/bookmarks/new' do
    erb :"bookmarks/new"
  end

  post '/bookmarks' do
    Bookmarks.create(url: params[:url])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
