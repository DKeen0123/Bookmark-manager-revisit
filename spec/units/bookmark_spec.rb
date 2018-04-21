require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://makersacademy.com")
      expect(bookmarks).to include("http://destroyallsoftware.com")
    end
  end

  describe '.create' do
    it 'adds a new bookmark' do
      Bookmark.create('https://github.com/')
      bookmarks = Bookmark.all
      expect(bookmarks).to include("https://github.com/")
      
    end
  end
end