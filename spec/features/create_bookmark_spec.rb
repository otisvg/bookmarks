feature 'creating bookmarks' do
  scenario 'user can create a new bookmark' do

    visit('/bookmarks/new')
    fill_in 'url', with: 'https://dev.to'
    fill_in 'title', with: 'Developer Blogs'
    click_button 'Submit'

    expect(page).to have_link 'Developer Blogs', href: 'https://dev.to'
  end

  scenario 'The bookmark must be a valid URL' do
    visit('/bookmarks/new')
    fill_in('url', with: 'this is not an url hehe')
    click_button('Submit')

    expect(page).not_to have_content "this is not an url hehe"
    expect(page).to have_content "You must submit a valid URL."
  end
end

