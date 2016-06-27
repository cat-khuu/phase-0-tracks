# Your program should ...

# PROMPT the designer/user for all of this information.
# CONVERT any user input to the appropriate data type.
# - convert user input for 'age' to an integer
# - convert user input for 'dogs_play_poker' and 'trump_tower' to booleans (t/f)
# INITIATE empty hash and label as 'result'
# STORE user input as keys(category) and values (user response) in result
# PRINT result after the user has answered all of the questions.

puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.to_i

puts "How many offspring do you have?"
offspring = gets.to_i

puts "How would you define your decor style?"
decor_theme = gets.chomp

puts "Dislike the idea of a 'dogs playing poker' theme? (y/n)"
dogs_play_poker = gets.chomp
likes_dogs = dogs_play_poker == "n"

puts "Love the thought of your home being dubbed as 'The Trump Tower 2.0'? (y/n)"
trump_tower = gets.chomp
trump_fanatic = trump_tower == "y"

result = {}
result[:name] = name
result[:age] = age
result[:offspring] = offspring
result[:decor_theme] = decor_theme
result[:likes_dogs] = likes_dogs
result[:trump_fanatic] = trump_fanatic

puts "Here are your preferences, thus far: #{result}."