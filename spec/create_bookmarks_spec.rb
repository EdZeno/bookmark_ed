require 'bookmarks.rb'

describe Bookmarks do
  it 'respondes to a method create and adds a new bookmark' do
     bookmark = Bookmarks.create('https://www.bbc.co.uk')
     Bookmarks.all
     expect(Bookmarks.all).to include 'https://www.bbc.co.uk'
  end
end
