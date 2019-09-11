feature 'adds a new bookmark' do
  scenario 'from the home page ridirects to the page with the form' do
    visit('/')
    click_button('Add link')
    expect(page).to have_content('Enter url')
  end
end
