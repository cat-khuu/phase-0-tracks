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
# ------------------------------------------ #


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


# @gender and @age should have setter methods that allows @gender and @age to be reassigned from outside the class definition.


  def gender=(new_gender)
    @gender = new_gender
  end

  def age=(new_age)
    @age = new_age
  end


# @age and @ethnicity should have getter methods as well.


  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

end

# Driver Code

santa = Santa.new("agender", "Brazilian-Korean", false)
santa = Santa.new("female", "Czech", "prefer not to say")
santa = Santa.new("gender fluid", "Mystical Creature", true)
santa = Santa.new("bigender", "Irish", "Eagles, who?")
santa.speak
santa.eat_milk_and_cookies("brownie")
santa.age
santa.celebrate_birthday
santa.get_mad_at("Comet")
santa.gender=("male")

p santa # print last instance of Santa with method updates
