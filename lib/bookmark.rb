require 'pg'

class Bookmark
  def self.all 
    if ENV['ENVIRONMENT'] = 'test'
      conn = PG.connect(dbname: 'bookmark_manager_test')
    else 
      conn = PG.connect(dbname: 'bookmark_manager')
    end

    res = conn.exec("SELECT * FROM bookmarks;")
    res.map do |bookmark|
       bookmark['url']
    end
  end

  def self.create(url:)
    if ENV['ENVIRONMENT'] = 'test'
      conn = PG.connect(dbname: 'bookmark_manager_test')
    else 
      conn = PG.connect(dbname: 'bookmark_manager')
    end

    conn.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
  end
end