# methods for standalone modules (NOT mixins) must be defined on the 'self' keyword.

module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words.upcase + "!!!" = " :D :D :D"
  end
end