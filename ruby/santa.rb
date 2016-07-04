# Your class should have three instance methods:

# A speak method that will print "Ho, ho, ho! Haaaappy holidays!"
# An eat_milk_and_cookies method that takes a cookie type (example: "snickerdoodle") as a parameter and prints "That was a good <type of cookie here>!"
# An initialize method that prints "Initializing Santa instance ...".
# ADD driver code
# -------------------------------------------#

# Update your Santa class with the following attributes:

# gender, which will be a string passed in on initialization**
# ethnicity, which will be a string passed in on initialization**
# reindeer_ranking, an array of reindeer from most preferred to least preferred. This is NOT passed in on initialization; it simply gets a default value of ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
# age, which is NOT passed in on initialization and defaults to 0
# ------------------------------------------

# Add some diverse initializations to your file as driver code, then test your work by running the program from the command line.
# ------------------------------------------


class Santa
  attr_accessor :age, :gender, :ethnicity, :likes_the_philadelphia_eagles, :reindeer_ranking
  def initialize(gender, ethnicity, likes_the_philadelphia_eagles)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @likes_the_philadelphia_eagles = likes_the_philadelphia_eagles
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "*Ho, ho, ho! Haaaappy holidays!*"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end


# Add three attribute-changing methods to your Santa class:

# celebrate_birthday should age Santa by one year.
# get_mad_at can take a reindeer's name as an argument, and move that reindeer in last place in the reindeer rankings.


  def celebrate_birthday
    @age = @age + 1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking.insert(@reindeer_ranking.length, reindeer_name)
    return @reindeer_ranking
  end


# # @gender and @age should have setter methods that allows @gender and @age to be reassigned from outside the class definition.


#   def gender=(new_gender)
#     @gender = new_gender
#   end

#   def age=(new_age)
#     @age = new_age
#   end


# # @age and @ethnicity should have getter methods as well.


#   def age
#     @age
#   end

#   def ethnicity
#     @ethnicity
#   end

end


# Use our array of example genders and an array of example ethnicities to create your Santas with a randomly selected gender and a randomly selected ethnicity.
# Set your new Santa's age to a random number between 0 and 140.
# Your program should print out the attributes of each Santa using the instance methods that give you access to that data.

# Define the following variables:

# - random_age -- as an array
# - example_genders -- as an array
# - example_ethnicities -- as an array
# - example_likes_the_philadelphia_eagles -- as an array
# - example_cookies -- as an array

# Create loop
# Set index as 0. Create Santa instances until index == chosen integer (e.g. 10)
# Initialize new instance and pass gender, ethnicity, and likes_the_philadelphia_eagles during initialization (e.g. santa = Santa.new("female", "Afgan", true))
# Setup initilization to select random gender, ethnicity, and likes_the_philadelphia_eagles from respective example arrays
# Set santa's age to randomly selected number in random_age array
# Call methods on created instances
# Increase index by +=1
# Print result of method calls and updated information for each instance


random_age=*(1..100)

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]

example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

example_likes_the_philadelphia_eagles = [true, false, "prefer not to say", "76ers fan only", "Eagles, who?", "Do they play on ESPN?", "Phillies fanatic"]

example_cookies = ["gingerbread", "sugar cookie", "brownie", "samoa", "chocolate chip cookie", "blondie", "macadamia nut cookie"]

index = 0
until index == 10 do
  santa = Santa.new("female", "Haitian", "prefer not to say")
  santa.gender = example_genders.sample
  santa.ethnicity = example_ethnicities.sample
  santa.likes_the_philadelphia_eagles = example_likes_the_philadelphia_eagles.sample

  santa.age = random_age.sample
  santa.speak
  puts "Oddly, Santa, like everyone else, was at some point, #{santa.age} years old, but now Santa is one year older. So that makes Santa #{santa.celebrate_birthday}."
  santa.eat_milk_and_cookies(example_cookies.sample)
  puts "Current reindeer rankings:"
  p santa.reindeer_ranking
  puts "Since you ate all the #{example_cookies.sample}s, you are no longer one of my top reindeers. Go to the end of the line."
  puts "New reindeer rankings:"
  santa.get_mad_at(santa.reindeer_ranking.sample)
  p santa.reindeer_ranking
  index +=1
end


# Driver Code

# santa = Santa.new("agender", "Brazilian-Korean", false)
# santa = Santa.new("female", "Czech", "prefer not to say")
# santa = Santa.new("gender fluid", "Mystical Creature", true)
# santa = Santa.new("bigender", "Irish", "Eagles, who?")
# santa.speak
# santa.eat_milk_and_cookies("brownie")
# santa.age
# santa.celebrate_birthday
# santa.get_mad_at("Comet")
# santa.gender=("male")

# p santa # print last instance of Santa with method updates
