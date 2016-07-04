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

class Santa
  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
  end

  def speak
    puts "*Ho, ho, ho! Haaaappy holidays!*"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

end

santa = Santa.new
santa.speak
santa.eat_milk_and_cookies("brownie")