require './app.rb'

feature 'viewing bookmarks' do
  scenario 'visiting the index page' do
    visit '/'
    expect(page).to have_content('BookmarkManager')
  end

  scenario 'visiting /bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content("http://makers.tech")
    expect(page).to have_content("http://www.destroyallsoftware.com")
    expect(page).to have_content("http://www.google.com")
  end

end
