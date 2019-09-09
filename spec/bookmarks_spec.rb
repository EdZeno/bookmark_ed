require './lib/bookmarks.rb'

describe Bookmarks do

  describe '.all' do
    it 'returns a list of bookmarks' do
      bookmarks = Bookmarks.all

      expect(bookmarks).to include "http://makers.tech"
      expect(bookmarks).to include "http://www.destroyallsoftware.com"
      expect(bookmarks).to include "http://www.google.com"
    end
  end 
end
