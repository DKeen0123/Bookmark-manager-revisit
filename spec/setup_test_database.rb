require 'pg'

  puts 'truncating table...'
  con = PG.connect :dbname => 'bookmark_manager_test'
  con.exec "TRUNCATE TABLE bookmarks"



print 'repopulating...'
con.exec "INSERT INTO bookmarks(url) VALUES('http://makersacademy.com')"
con.exec "INSERT INTO bookmarks(url) VALUES('http://destroyallsoftware.com')"