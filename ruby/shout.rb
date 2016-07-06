# methods for standalone modules (NOT mixins) must be defined on the 'self' keyword.

module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words.upcase + "!!!" + " :D :D :D"
  end
end

p Shout.yell_angrily("Not the ice cream cake")
p Shout.yelling_happily("peace and love for all")