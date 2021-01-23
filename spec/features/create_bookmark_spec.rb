feature 'creating bookmarks' do
  scenario 'creating a new bookmark' do
    visit('/bookmarks/new')
    fill_in 'url', with: 'https://dev.to'
    click_button 'Submit'

    expect(page).to have_content "https://dev.to"
  end
 end

