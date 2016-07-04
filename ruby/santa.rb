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
# ------------------------------------------ #

# Add some diverse initializations to your file as driver code, then test your work by running the program from the command line.

class Santa
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

end

# Driver Code

santa = Santa.new("agender", "Brazilian-Korean", false)
santa = Santa.new("female", "Czech", "prefer not to say")
santa.Santa.new("gender fluid", "Mystical Creature", true)
santa.Santa.new("bigender", "Irish", "Eagles, who?")
santa.speak
santa.eat_milk_and_cookies("brownie")