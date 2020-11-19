require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      bookmark = Bookmark.create(url: "http://www.makersacademy.com", title: "Makers Academy")
      Bookmark.create(url: "http://www.destroyallsoftware.com", title: "Destroy All Software")
      Bookmark.create(url: "http://www.google.com", title: "Google")
   
      bookmarks = Bookmark.all
   
      expect(bookmarks.length).to eq 3
      expect(bookmarks.first).to be_a Bookmark
      # expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Makers Academy'
      expect(bookmarks.first.url).to eq 'http://www.makersacademy.com'
    end

    describe '.create' do 
      it 'creates a new bookmark' do 
        bookmark = Bookmark.create(url: 'http://www.testbookmark.com', title: 'Test Bookmark').first

        expect(bookmark['url']).to eq 'http://www.testbookmark.com'
        expect(bookmark['title']).to eq 'Test Bookmark'
      end
    end 
  end
end