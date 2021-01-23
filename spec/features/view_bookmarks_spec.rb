feature 'viewing bookmarks' do
  scenario 'visiting bookmarks page' do
    conn = PG.connect(dbname: 'bookmark_manager_test')
    conn.exec("INSERT INTO bookmarks (url) VALUES ('https://www.edx.org/course');")
    conn.exec("INSERT INTO bookmarks (url) VALUES('https://ktt2.com/music');")
    conn.exec("INSERT INTO bookmarks (url) VALUES('https://www.reddit.com');")


    visit('/bookmarks')
    expect(page).to have_content "https://www.edx.org/course"
    expect(page).to have_content "https://ktt2.com/music"
    expect(page).to have_content "https://www.reddit.com"
  end
 end

