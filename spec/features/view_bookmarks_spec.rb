feature 'viewing bookmarks' do
  scenario 'visiting bookmarks page' do
    visit('/bookmarks')
    expect(page).to have_content "https://www.edx.org/course/cs50s-introduction-to-computer-science"
    expect(page).to have_content "https://ktt2.com/music"
    expect(page).to have_content "https://www.reddit.com/"
  end
 end

