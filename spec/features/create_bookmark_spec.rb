feature 'creating bookmarks' do
  scenario 'creating a new bookmark' do

    visit('/bookmarks/new')
    fill_in 'url', with: 'https://dev.to'
    fill_in 'title', with: 'Developer Blogs'
    click_button 'Submit'

    expect(page).to have_link 'Developer Blogs', href: 'https://dev.to'
  end
 end

