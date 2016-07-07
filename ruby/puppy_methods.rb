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

# <------ Write your own Class ------->

# Design and implement your own class below the Puppy class -- anything you'd like, but it should have an initialize method and AT LEAST two other instance methods. Then do the following:

# 1. Use a loop to make 50 instances of your class.
# 2. Modify your loop so that it stores all of the instances in a data structure.
# 3. Iterate over that data structure using .each and call the instance methods you wrote on each instance. So if you wrote a Gymnast class, this is where you'd call .flip and .jump on each of your instances of Gymnast.



class Dragon
  attr_accessor :altitude, :amount
  def initialize
    @altitude = altitude
    @amount = amount
  end

  def breathe_fire
    "*sizzle*"
  end

  def toast_marshmallows(amount)
    "I toasted #{amount} marshmallows."
  end

  def fly(altitude)
    "I can fly #{altitude} feet high!"
  end

end





