# Design a class. Your class should have:
# - at least three attributes (using at least two data types) wholes values will vary from instance to instance
# - at least three methods, at least one of which takes an argument

# POLITICIAN class

# ATTRIBUTES - passed during initialization
# age - integer
# name - string
# political party - string

# METHODS
# chants - "#{slogan}!"
# photo_op_with_supporters - "*smiles for photo*"
# fundraise(promise) - "If you vote for me, I promise to #{promise}." return promise.

# ------- BEGIN PSEUDOCODE FOR LOOP ------- #

# OUTSIDE LOOP:
# Create politicians hashed hash to store created instances.
# Outer hash - key(name), value(inner hash).
# Inner hash - keys (age, political party, slogan, promise), values = user input for each attribute
# After each instance is created, ask user if they are done creating instances (y/n). input = 'n' == true.

# INSIDE LOOP:
# while input == true do:
# Ask user for politician's name, age, political party, slogan, and promise if elected.
# Use user input for name, age, and political party to initialize new instance.
# Store information passed for each instance in politician's hash. (name, age, political party)
# Call methods (chants, fundraise) on each instance and store return value in politicians hash.
# Ask user if they are done creating candidates. If 'n' (true), then continue creating more politicians. If 'y' (false), then break from loop.
# Print summarized stats for created politicians by:
# Iterating through politicians hashed hash.
# - Iterate FIRST, through the outer most hash (politicians.each do |k, v| puts "Name: #{k}"), then iterate through the inner most hash (v.each do |k2, v2| puts "#{k2}: #{v2}")

# -------- END PSEUDOCODE FOR LOOP -------- #

# ------------------------------------------ #
class Politician
  attr_reader :citizenship
  attr_accessor :name, :age, :political_party
  def initialize(name, age, political_party)
    @name = name
    @age = age
    @political_party = political_party
    @citizenship = "United States"
  end

  def chants(slogan)
    puts "#{slogan}!"
    return slogan
  end

  def photo_op_with_supporters
    puts "*smiles for photo*"
  end

  def fundraise(promise)
    puts "A vote for me is a vote for #{promise}."
    return promise
  end
end

# ---------- END POLITICIAN CLASS ---------- #

politicians = {}

input = 'n' == true

while input = true
puts "What is the politician's name?"
name = gets.chomp

puts "How old is #{name}?"
age = gets.to_i

puts "#{name}, is a member of which political party?"
political_party = gets.chomp

puts "What is #{name}'s campaign slogan?"
slogan = gets.chomp

puts "A vote for #{name} is a vote for...?"
promise = gets.chomp

politician = Politician.new(name, age, political_party)

politicians[politician.name] = name
politicians[politician.name] = {"Age" => politician.age}
politicians[politician.name].merge!("Citizenship" => politician.citizenship)
politicians[politician.name].merge!("Political party" => politician.political_party)
politicians[politician.name].merge!("Slogan" => politician.chants(slogan))
politicians[politician.name].merge!("Promise" => politician.fundraise(promise))

puts "Are you finished creating candidates for the 2016 general elections? (y/n)"
input = gets.chomp
if input == 'y'
  input = false
  break
end
end