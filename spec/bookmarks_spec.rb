require './lib/bookmarks.rb'

describe Bookmarks do

  describe '.all' do
    it 'returns a list of bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks VALUES(1, 'http://makers.tech');")
      connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com')")
      connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com')")

      bookmarks = Bookmarks.all

      expect(bookmarks).to include "http://makers.tech"
      expect(bookmarks).to include "http://www.destroyallsoftware.com"
      expect(bookmarks).to include "http://www.google.com"
    end
  end

  describe '.create' do
    it 'creates a new bookmark' do
      Bookmarks.create(url: 'http://www.testbookmark.com')
      expect(Bookmarks.all).to include 'http://www.testbookmark.com'
    end
  end

end
