# frozen_string_literal: true

feature 'updating a bookmark' do
  scenario 'user can update a bookmark' do
    bookmark = Bookmark.create(url: 'http://www.otis.com', title: 'otis')
    visit('/bookmarks')
    expect(page).to have_link('otis', href: 'http://www.otis.com')

    first('.bookmark').click_button 'Edit'
    expect(current_path).to eq "/bookmarks/#{bookmark.id}/edit"

    fill_in('url', with: 'http://www.nototis.com')
    fill_in('title', with: 'not otis')
    click_button('Submit')

    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('otis', href: 'http://www.otis.com')
    expect(page).to have_link('not otis', href: 'http://www.nototis.com')
  end
end
