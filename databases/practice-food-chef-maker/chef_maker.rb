# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("chef_maker.db")
# db.execute("SELECT * FROM chefs")
db.results_as_hash = true

# learn about fancy string delimiters
# ANYTHING = any word you want, but that same word cannot appear between the two ANYTHINGS.We're choosing SQL to replace our ANYTHINGs.
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS chefs (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    cuisine VARCHAR(255)
    )
SQL

# create_table_cmd is similar to declaring regular string. str = "akldjfkl". Just a string in ruby that is going to get passed to a method that is going to run it as SQL in your database. You ARE NOT running SQL in your file.


# create a chef table (if it's NOT already there) -- add "IF NOT EXISTS" to line 12 of CREATE TABLE.
# pass string through execute

db.execute(create_table_cmd)

# add a test chef
db.execute("INSERT INTO chefs (name, age, cuisine) VALUES ('Bob', 35, 'Italian')")
# run same line twice to create two chefs named Bob but with two separate primary keys

# explore ORM by retrieving data


# instance attribute method. Would set in our instance on line 8.


# add lots of chefs
# ? = placeholders

def create_chefs(db, name, age)
  db.execute("INSERT INTO chefs (name, age, cuisine) VALUES (?, ?, ?)", [name, age, cuisine])

  1000.times do
    create_chefs(db, Faker::Name.name, 0, )
  end

# chefs = db.execute("SELECT * FROM chefs")
# puts chefs.class # good idea to run .class because it might look like an array or a hash, but it might be something other than an array or a hash, which have different class methods available.
# p chefs

# chefs.each do |chefs|
#   puts "#{chefs['name']} cooks #{chefs['cuisine']}"
# end