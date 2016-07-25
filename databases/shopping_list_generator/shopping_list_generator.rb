require 'sqlite3'

db = SQLite3::Database.new("shopping_list_generator.db")

# create tables for each season: Spring, Summer, Fall, Winter
db.execute("CREATE TABLE IF NOT EXISTS Spring(spring_id INTEGER PRIMARY KEY, spring_veg_name VARCHAR(255) UNIQUE, March BOOLEAN, April BOOLEAN, May BOOLEAN)")

db.execute("CREATE TABLE IF NOT EXISTS Summer(summer_id INTEGER PRIMARY KEY, summer_veg_name VARCHAR(255) UNIQUE, June BOOLEAN, July BOOLEAN, August BOOLEAN)")

db.execute("CREATE TABLE IF NOT EXISTS Fall(fall_id INTEGER PRIMARY KEY, fall_veg_name VARCHAR(255) UNIQUE, September BOOLEAN, October BOOLEAN, November BOOLEAN)")

db.execute("CREATE TABLE IF NOT EXISTS Winter(winter_id INTEGER PRIMARY KEY, winter_veg_name VARCHAR(255) UNIQUE, December BOOLEAN, January BOOLEAN, February BOOLEAN)")

db.execute("CREATE TABLE IF NOT EXISTS Shopping_list(list_id INTEGER PRIMARY KEY, item_name VARCHAR(255) UNIQUE")