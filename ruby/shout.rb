# methods for standalone modules (NOT mixins) must be defined on the 'self' keyword.

module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words.upcase + "!!!" + " :D :D :D"
  end
end

# p Shout.yell_angrily("Not the ice cream cake")
# p Shout.yelling_happily("peace and love for all")

class Pedestrian
  include Shout
end

class Motorist
  include Shout
end

pedestrian = Pedestrian.new
p pedestrian.yell_angrily("Watch where you're going! I'm walking here")
p pedestrian.yelling_happily("another day, another street crossed without getting run over")

motorist = Motorist.new
p motorist.yell_angrily("You mean, I went through the wrong toll?!?")
p motorist.yelling_happily("traffic court abolished. take that, PPA")