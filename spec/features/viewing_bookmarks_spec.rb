require 'pg'

feature 'viewing bookmarks' do
  scenario 'visiting the index page' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    Bookmarks.create(url: "http://makers.tech")
    Bookmarks.create(url: "http://www.destroyallsoftware.com")
    Bookmarks.create(url: "http://www.google.com")

    visit '/bookmarks'
    expect(page).to have_content("http://makers.tech")
    expect(page).to have_content("http://www.destroyallsoftware.com")
    expect(page).to have_content("http://www.google.com")
  end

end
