feature 'creating bookmarks' do
  scenario 'A user can add a bookmark to the bookmark list' do
    visit '/bookmarks'
    click_button 'Add Bookmark'
    fill_in 'url', with: 'https://github.com/'
    click_button 'Submit'
    expect(page).to have_content 'https://github.com/'
    expect(page).to have_content 'http://destroyallsoftware.com'
  end
end