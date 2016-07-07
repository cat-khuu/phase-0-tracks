# # DEFINE PUPPY CLASS
# class Puppy

# # DEFINE METHOD

#   def initialize
#     puts "Initializing new puppy instance..."
#   end

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end


#   def speak(frequency)
#     frequency.times {puts "woof!"}
#   end


#   def roll_over
#     puts "*rolls over*"
#   end


#   def sit
#     puts "*sits*"
#   end

# # <----- Begin Pseudocode ----->

# # Puppy#dog_years
# # input: integer as human years
# # output: integer as dog years
# # Conversion:
# # - 1 human year = 15 dog years
# # - 2 human years = 24 dog years
# # 3 years and up = +4 years to 2 human years(24)
# # IF human_years equals 1, then dog_age = 15
# # ELSIF human_years equals 2, then dog_age = 24
# # ELSIF human_years is equal to or greater than 3, then dog_age = 24 + (4 * (human_years-2)). Suppose human_years = 3. dog_age = 24 + (4 * (3-2)) = 28.
# # ELSE print "Invalid input. Please enter an integer."
# # RETURN dog_age

# # <----- End Pseudocode ----->

#   def dog_years(human_years)
#     if human_years == 1
#        dog_age = 15
#     elsif human_years == 2
#        dog_age = 24
#     elsif human_years >= 3
#        dog_age = 24 + (4 * (human_years-2))
#     else
#       puts "Invalid input. Please enter an integer."
#     end

#     if human_years == 1
#       puts "#{human_years} human year equals #{dog_age} dog years."
#     elsif human_years >= 2
#       puts "#{human_years} human years equals #{dog_age} dog years."
#     end

#   end

# end


# # DRIVER CODE

# fido = Puppy.new
# fido.fetch("ball")
# fido.speak(4)
# fido.roll_over
# fido.dog_years(1)
# fido.dog_years(2)
# fido.dog_years(3)
# fido.dog_years(4)
# fido.sit

# ------------- DRAGON CLASS -------------- #
##  Pseudocode for loop
# Loop until 50 instances of Dragon have been created. index = 1, do until index == 51. Increase index by +=1.
# Store instances in hash called dragon_hash. Key = index, and value = created instance.
# Iterate over dragon_hash by using .each to call each method (breathe_fire,toast_marshmallows, fly) on each instance.

# **Iteration/data structure practice**
# Define dragon_count method to print: "Dragon ##{index}"
# Iterate over dragon hash
# For each instance in hash, call toast_marshmallows
# Push each method call into new data structure - marshmallows_toasted_hash
# Key = dragon count
# Value = result of method call for each instance

# ----------------------------------------- #

class Dragon
  attr_accessor :altitude, :amount
  def initialize
    @altitude = altitude
    @amount = amount
  end

  def dragon_count(index)
    "Dragon ##{index}"
  end

  def breathe_fire
    puts "*sizzle*"
    "*sizzle*"
  end

  def toast_marshmallows(amount)
    puts "I toasted #{amount} marshmallows."
    "#{amount} marshmallows toasted"
  end

  def fly(altitude)
    puts "I can fly #{altitude} feet high!"
  end

end


dragon_hash = {}
index = 1
until index == 51 do
  dragon = Dragon.new
  dragon_hash[index] = dragon
  index+=1
end

# p dragon_hash

dragon_hash.each do |index, instance|
  instance.breathe_fire
  instance.toast_marshmallows(index)
  instance.fly(index*100)
end

# -------------- PRACTICE ---------------- #
marshmallows_toasted_hash = {}

dragon_hash.each do |index, instance|
  marshmallows_toasted_hash[instance.dragon_count(index)] =  instance.toast_marshmallows(index)
end

p marshmallows_toasted_hash