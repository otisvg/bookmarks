require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include("https://www.edx.org/course")
      expect(bookmarks).to include("https://ktt2.com/music")
      expect(bookmarks).to include("https://www.reddit.com")
    end
  end
end