require 'sqlite3'

db = SQLite3::Database.new("recipe_generator.db")

# create tables for each season: Spring, Summer, Fall, Winter
db.execute("CREATE TABLE IF NOT EXISTS Spring(spring_id INTEGER PRIMARY KEY, spring_veg_name VARCHAR(255) UNIQUE, March BOOLEAN, April BOOLEAN, May BOOLEAN)")

db.execute("CREATE TABLE IF NOT EXISTS Summer(summer_id INTEGER PRIMARY KEY, summer_veg_name VARCHAR(255) UNIQUE, June BOOLEAN, July BOOLEAN, August BOOLEAN)")

db.execute("CREATE TABLE IF NOT EXISTS Fall(fall_id INTEGER PRIMARY KEY, fall_veg_name VARCHAR(255) UNIQUE, September BOOLEAN, October BOOLEAN, November BOOLEAN)")

db.execute("CREATE TABLE IF NOT EXISTS Winter(winter_id INTEGER PRIMARY KEY, winter_veg_name VARCHAR(255) UNIQUE, December BOOLEAN, January BOOLEAN, February BOOLEAN)")

# populate tables

# db.execute("INSERT INTO Spring (spring_veg_name, March, April, May) SELECT 'artichokes' as spring_veg_name, 'true' as March, 'true' as April, 'true' as May FROM Spring WHERE NOT EXISTS (SELECT * FROM Spring WHERE ")
db.execute("INSERT OR IGNORE INTO Spring (spring_veg_name, March, April, May) VALUES ('arugula', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Spring (spring_veg_name, March, April, May) VALUES ('asparagus', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Spring (spring_veg_name, March, April, May) VALUES ('bok choy', 'true', 'true', 'true')")

db.execute("INSERT OR IGNORE INTO Summer (summer_veg_name, June, July, August) VALUES ('arugula', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Summer (summer_veg_name, June, July, August) VALUES ('bok choy', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Summer (summer_veg_name, June, July, August) VALUES ('cauliflower', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Summer (summer_veg_name, June, July, August) VALUES ('corn', 'true', 'true', 'true')")

db.execute("INSERT OR IGNORE INTO Fall (fall_veg_name, September, October, November) VALUES ('artichokes', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Fall (fall_veg_name, September, October, November) VALUES ('arugula', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Fall (fall_veg_name, September, October, November) VALUES ('bok choy', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Fall (fall_veg_name, September, October, November) VALUES ('brussel sprouts', 'true', 'true', 'true')")

db.execute("INSERT OR IGNORE INTO Winter (winter_veg_name, December, January, February) VALUES ('arugula', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Winter (winter_veg_name, December, January, February) VALUES ('bok choy', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Winter (winter_veg_name, December, January, February) VALUES ('brussel sprouts', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Winter (winter_veg_name, December, January, February) VALUES ('cauliflower', 'true', 'true', 'true')")

def display_seasonal_vegetables(db, season)
  if season == "Winter"
  result = db.execute("SELECT winter_veg_name FROM Winter")
  elsif season == "Fall"
  result = db.execute("SELECT fall_veg_name FROM Fall")
  elsif season == "Summer"
  result = db.execute("SELECT summer_veg_name FROM Summer")
  elsif season == "Spring"
  result = db.execute("SELECT spring_veg_name FROM Spring")
  end
#  p result

puts "-----------------------"
puts "\nIn-season #{season} Vegetables:"
puts "\n"

  result.each do |row|
    puts row.join "\s"
  end
end

puts "What season is it? (Ex. 'Spring')"
season = gets.chomp

display_seasonal_vegetables(db, season)

