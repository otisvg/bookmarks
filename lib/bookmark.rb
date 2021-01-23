require 'pg'

class Bookmark
  def self.all 
    conn = PG.connect(dbname: 'bookmark_manager')
    res = conn.exec("SELECT * FROM bookmarks;")
    res.map do |bookmark|
       bookmark['url']
    end
  end
end