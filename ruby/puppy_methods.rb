# DEFINE PUPPY CLASS
class Puppy


# DEFINE CLASS METHOD
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(frequency)
    frequency.times {puts "woof!"}
  end


end

# DRIVER CODE

fido = Puppy.new
fido.fetch("ball")
fido.speak(4)

