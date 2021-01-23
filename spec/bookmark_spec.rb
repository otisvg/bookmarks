require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      conn = PG.connect(dbname: 'bookmark_manager_test')
      conn.exec("INSERT INTO bookmarks (url) VALUES ('https://www.edx.org/course');")
      conn.exec("INSERT INTO bookmarks (url) VALUES('https://ktt2.com/music');")
      conn.exec("INSERT INTO bookmarks (url) VALUES('https://www.reddit.com');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include("https://www.edx.org/course")
      expect(bookmarks).to include("https://ktt2.com/music")
      expect(bookmarks).to include("https://www.reddit.com")
    end
  end
end