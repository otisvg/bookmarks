feature 'viewing bookmarks' do
  scenario 'visiting bookmarks page' do
    
    Bookmark.create(url: 'https://www.edx.org/course', title: 'edx courses')
    Bookmark.create(url: 'https://ktt2.com/music', title: 'music forum')
    Bookmark.create(url: 'https://www.reddit.com', title: 'reddit ')

    visit '/bookmarks'

    expect(page).to have_link('edx courses', href: 'https://www.edx.org/course')
    expect(page).to have_link('music forum',  href: 'https://ktt2.com/music')
    expect(page).to have_link('reddit', href: 'https://www.reddit.com')
  end
 end

