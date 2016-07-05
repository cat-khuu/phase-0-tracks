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
  end

  def photo_op_with_supporters
    puts "*smiles for photo*"
  end

  def fundraise(promise)
    puts "If you vote for me, I promise to #{promise}."
  end
end


