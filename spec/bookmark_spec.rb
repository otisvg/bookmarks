require 'bookmark'
require 'database_helpers'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmark = Bookmark.create(url: "https://dev.to/", title: "Developer Blogs")
      Bookmark.create(url: "https://www.edx.org/course", title: "edx courses")
      Bookmark.create(url: "http://www.google.com", title: "Google")
      
      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 3
      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq bookmark.id
      expect(bookmark.title).to eq 'Developer Blogs'
      expect(bookmark.url).to eq 'https://dev.to/'
    end
  end
  describe '.create' do
    it 'creates a bookmark' do
      bookmark = Bookmark.create(url: 'http://www.testbookmark.com', title: 'Test Bookmark')
      persisted_data = persisted_data(id: bookmark.id)

      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data['id']
      expect(bookmark.title).to eq 'Test Bookmark'
      expect(bookmark.url).to eq 'http://www.testbookmark.com'
    end 
  end
  describe '.delete' do
    it 'deletes a bookmark' do
      bookmark = Bookmark.create(url: 'http://www.testbookmark.com', title: 'Test Bookmark')
      
      Bookmark.delete(id: bookmark.id)

      expect(Bookmark.all.length).to eq 0
    end 
  end
end