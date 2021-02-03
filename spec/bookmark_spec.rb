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

  describe '.update' do
    it 'updates the bookmark with the given data' do
      bookmark = Bookmark.create(url: 'http://www.otis.com', title: 'Makers Academy')
      updated_bookmark = Bookmark.update(id: bookmark.id, url: 'http://www.nototis.com', title: 'not otis')

      expect(updated_bookmark).to be_a Bookmark
      expect(updated_bookmark.id).to eq bookmark.id
      expect(updated_bookmark.title).to eq 'not otis'
      expect(updated_bookmark.url).to eq 'http://www.nototis.com'
    end
  end

  describe '.find' do
    it 'returns the requested bookmark object' do
      bookmark = Bookmark.create(title: 'otis', url: 'http://www.otis.com')

      result = Bookmark.find(id: bookmark.id)

      expect(result).to be_a Bookmark
      expect(result.id).to eq bookmark.id
      expect(result.title).to eq 'otis'
      expect(result.url).to eq 'http://www.otis.com'
    end
  end
end