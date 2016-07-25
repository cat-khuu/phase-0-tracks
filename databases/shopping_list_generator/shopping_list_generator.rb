require 'sqlite3'

db = SQLite3::Database.new("shopping_list_generator.db")

# create tables for each season: Spring, Summer, Fall, Winter
db.execute("CREATE TABLE IF NOT EXISTS Spring(spring_id INTEGER PRIMARY KEY, spring_veg_name VARCHAR(255) UNIQUE, March BOOLEAN, April BOOLEAN, May BOOLEAN)")

db.execute("CREATE TABLE IF NOT EXISTS Summer(summer_id INTEGER PRIMARY KEY, summer_veg_name VARCHAR(255) UNIQUE, June BOOLEAN, July BOOLEAN, August BOOLEAN)")

db.execute("CREATE TABLE IF NOT EXISTS Fall(fall_id INTEGER PRIMARY KEY, fall_veg_name VARCHAR(255) UNIQUE, September BOOLEAN, October BOOLEAN, November BOOLEAN)")

db.execute("CREATE TABLE IF NOT EXISTS Winter(winter_id INTEGER PRIMARY KEY, winter_veg_name VARCHAR(255) UNIQUE, December BOOLEAN, January BOOLEAN, February BOOLEAN)")

db.execute("CREATE TABLE IF NOT EXISTS Shopping_list(list_id INTEGER PRIMARY KEY, item_name VARCHAR(255) UNIQUE")


# populate Spring table:
db.execute("INSERT OR IGNORE INTO Spring (spring_veg_name, March, April, May) VALUES ('artichokes', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Spring (spring_veg_name, March, April, May) VALUES ('arugula', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Spring (spring_veg_name, March, April, May) VALUES ('asparagus', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Spring (spring_veg_name, March, April, May) VALUES ('bok choy', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Spring (spring_veg_name, March, April, May) VALUES ('brussel sprouts', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Spring (spring_veg_name, March, April, May) VALUES ('cauliflower', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Spring (spring_veg_name, March, April, May) VALUES ('watercress', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Spring (spring_veg_name, March, April, May) VALUES ('fava beans', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Spring (spring_veg_name, March, April, May) VALUES ('kale', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Spring (spring_veg_name, March, April, May) VALUES ('mustard greens', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Spring (spring_veg_name, March, April, May) VALUES ('parsnips', 'true', 'true', 'false')")
db.execute("INSERT OR IGNORE INTO Spring (spring_veg_name, March, April, May) VALUES ('peas', 'false', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Spring (spring_veg_name, March, April, May) VALUES ('spinach', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Spring (spring_veg_name, March, April, May) VALUES ('sweet potatoes', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Spring (spring_veg_name, March, April, May) VALUES ('turnips', 'true', 'true', 'false')")


# populate Summer table:
db.execute("INSERT OR IGNORE INTO Summer (summer_veg_name, June, July, August) VALUES ('arugula', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Summer (summer_veg_name, June, July, August) VALUES ('bok choy', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Summer (summer_veg_name, June, July, August) VALUES ('cauliflower', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Summer (summer_veg_name, June, July, August) VALUES ('corn', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Summer (summer_veg_name, June, July, August) VALUES ('watercress', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Summer (summer_veg_name, June, July, August) VALUES ('cucumbers', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Summer (summer_veg_name, June, July, August) VALUES ('eggplant', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Summer (summer_veg_name, June, July, August) VALUES ('fava beans', 'true', 'true', 'false')")
db.execute("INSERT OR IGNORE INTO Summer (summer_veg_name, June, July, August) VALUES ('green beans', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Summer (summer_veg_name, June, July, August) VALUES ('kale', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Summer (summer_veg_name, June, July, August) VALUES ('mustard greens', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Summer (summer_veg_name, June, July, August) VALUES ('okra', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Summer (summer_veg_name, June, July, August) VALUES ('peas', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Summer (summer_veg_name, June, July, August) VALUES ('bell peppers', 'false', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Summer (summer_veg_name, June, July, August) VALUES ('spinach', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Summer (summer_veg_name, June, July, August) VALUES ('summer squash', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Summer (summer_veg_name, June, July, August) VALUES ('sweet potatoes', 'false', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Summer (summer_veg_name, June, July, August) VALUES ('tomatillos', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Summer (summer_veg_name, June, July, August) VALUES ('tomatoes', 'true', 'true', 'true')")


# populate Fall table:
db.execute("INSERT OR IGNORE INTO Fall (fall_veg_name, September, October, November) VALUES ('artichokes', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Fall (fall_veg_name, September, October, November) VALUES ('arugula', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Fall (fall_veg_name, September, October, November) VALUES ('bok choy', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Fall (fall_veg_name, September, October, November) VALUES ('brussel sprouts', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Fall (fall_veg_name, September, October, November) VALUES ('cauliflower', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Fall (fall_veg_name, September, October, November) VALUES ('corn', 'true', 'true', 'false')")
db.execute("INSERT OR IGNORE INTO Fall (fall_veg_name, September, October, November) VALUES ('watercress', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Fall (fall_veg_name, September, October, November) VALUES ('cucumbers', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Fall (fall_veg_name, September, October, November) VALUES ('eggplant', 'true', 'true', 'false')")
db.execute("INSERT OR IGNORE INTO Fall (fall_veg_name, September, October, November) VALUES ('green beans', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Fall (fall_veg_name, September, October, November) VALUES ('kale', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Fall (fall_veg_name, September, October, November) VALUES ('mustard greens', 'true', 'true', 'false')")
db.execute("INSERT OR IGNORE INTO Fall (fall_veg_name, September, October, November) VALUES ('okra', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Fall (fall_veg_name, September, October, November) VALUES ('parsnips', 'false', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Fall (fall_veg_name, September, October, November) VALUES ('peas', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Fall (fall_veg_name, September, October, November) VALUES ('bell peppers', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Fall (fall_veg_name, September, October, November) VALUES ('spinach', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Fall (fall_veg_name, September, October, November) VALUES ('summer squash', 'true', 'true', 'false')")
db.execute("INSERT OR IGNORE INTO Fall (fall_veg_name, September, October, November) VALUES ('winter', 'false', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Fall (fall_veg_name, September, October, November) VALUES ('sweet potatoes', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Fall (fall_veg_name, September, October, November) VALUES ('tomatillos', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Fall (fall_veg_name, September, October, November) VALUES ('tomatoes', 'true', 'true', 'false')")
db.execute("INSERT OR IGNORE INTO Fall (fall_veg_name, September, October, November) VALUES ('turnips', 'true', 'true', 'true')")


# populate Winter table:
db.execute("INSERT OR IGNORE INTO Winter (winter_veg_name, December, January, February) VALUES ('arugula', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Winter (winter_veg_name, December, January, February) VALUES ('bok choy', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Winter (winter_veg_name, December, January, February) VALUES ('brussel sprouts', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Winter (winter_veg_name, December, January, February) VALUES ('cauliflower', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Winter (winter_veg_name, December, January, February) VALUES ('watercress', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Winter (winter_veg_name, December, January, February) VALUES ('kale', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Winter (winter_veg_name, December, January, February) VALUES ('mustard greens', 'false', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Winter (winter_veg_name, December, January, February) VALUES ('parsnips', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Winter (winter_veg_name, December, January, February) VALUES ('spinach', 'true', 'true', 'true')")
db.execute("INSERT OR IGNORE INTO Winter (winter_veg_name, December, January, February) VALUES ('turnips', 'true', 'true', 'true')")

def display_seasonal_vegetables(db, month)
  if month == 'March'|| month == 'April'|| month == 'May'
    result = db.execute("SELECT spring_veg_name FROM Spring WHERE #{month}='true'")
  elsif month == 'June'|| month == 'July'|| month == 'August'
    result = db.execute("SELECT summer_veg_name FROM Summer WHERE #{month}='true'")
  elsif month == 'September'|| month == 'October'|| month == 'November'
    result = db.execute("SELECT fall_veg_name FROM Fall WHERE #{month}='true'")
  elsif month == 'December'|| month == 'January' || month == 'February'
    result = db.execute("SELECT winter_veg_name FROM Winter WHERE #{month}='true'")
  end


  puts "-----------------------"
  puts "\nWhat vegetables to eat in #{month}:"
  puts "\n"

  result.each do |row|
    puts row.join "\s"
  end
end

puts "What month is it? (Ex. 'June')"
month = gets.chomp

display_seasonal_vegetables(db, month)

done = false
until done == true do
  puts "Select from the above list your favorite vegetables. Press 'enter' after each item. Type 'done' when finished creating your list. (Ex. 'okra')"
  input = gets.chomp
  db.execute("INSERT INTO Shopping_list (item_name) VALUES (?)", [input])
  if input == 'done'
    done = true
  end
end


puts "-----------------------"
  puts "Here is your current shopping list:"
  puts "\n"

list = db.execute("SELECT * FROM shopping_list")
list.each do |item|
  puts item.join "\s"
end