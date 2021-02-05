feature 'adding and viewing comments' do
  feature 'users can add and view comments' do
    scenario 'a comment is added to a bookmark' do
      bookmark = Bookmark.create(url: "https://www.fish.com", title: "fish!")
      visit '/bookmarks'
      first('.bookmark').click_button 'Add Comment'

      expect(current_path).to eq "/bookmarks/#{bookmark.id}/comments/new"

      fill_in 'comment', with: 'this is a fish comment!'
      click_button 'submit'

      expect(current_path).to eq '/bookmarks'
      expect(first('.bookmark')).to have_content 'this is a fish comment!'
    end
  end
end