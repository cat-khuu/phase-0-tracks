# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/extra_curriculars' do
  # @students_music = db.execute("SELECT age FROM students WHERE age BETWEEN 10 AND 20")
  # @students_forensics = db.execute("SELECT age FROM students WHERE age=25")
  @students = db.execute("SELECT * FROM students")

  erb :extra_curriculars
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources