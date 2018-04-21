require 'pg'

class Bookmark

  def self.all
    if ENV['RACK_ENV'] = 'test'
      con = PG.connect :dbname => 'bookmark_manager_test'
    else 
      con = PG.connect :dbname => 'bookmark_manager'
    end
    result = con.exec "SELECT * FROM bookmarks"
    result.map do |row|
      row['url']
    end
  end

  def self.create(url)
    if ENV['RACK_ENV'] = 'test'
      con = PG.connect :dbname => 'bookmark_manager_test'
    else 
      con = PG.connect :dbname => 'bookmark_manager'
    end
    con.exec("INSERT INTO bookmarks(url) VALUES('#{url}')")
  end
end