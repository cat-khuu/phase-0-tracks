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

# Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.

# Separate keys from result to display which categories the user can edit their responses for.
# Ask user if they want to edit any of their responses
# If yes, then write case statement for when 'y' and when 'n'
# WHEN 'Y'
# - Prompt user to enter category (key) they want to make changes to.
# - Convert response to a symbol ("age" => :age) and store in variable changed_key
# - Depending on what key they enter, the user will be asked the question related to the key. (e.g. if changed_key == :age, then the user will be asked: "How old are you?")
# - Store updated value in result
# - If user enters a key that is not an option, then print "That is not an option."
# WHEN 'N'
# - Print a thank you message and tell the user you will create the #{decor_theme} that they have always envisioned.
# - If the user enters a response (edit_key) that is other than 'y' or 'n', then print "I'm sorry, I didn't get that..."

keys = result.keys

puts "Do you want to edit any of your responses? (y/n)"
edit_key = gets.chomp

case edit_key
when "y"
  puts "Enter the name of the category you want to make changes to. Choose from: #{keys.join(", ")}."
  changed_key = gets.chomp.to_sym
    if changed_key == :name
      puts "What is your name?"
      name = gets.chomp
      result[:name] = name
    elsif changed_key == :age
      puts "How old are you?"
      age = gets.to_i
      result[:age] = age
    elsif changed_key == :offspring
      puts "How many offspring do you have?"
      offspring = gets.to_i
      result[:offspring] = offspring
    elsif changed_key == :decor_theme
      puts "How would you define your decor style now?"
      decor_theme = gets.chomp
      result[:decor_theme] = decor_theme
    elsif changed_key == :likes_dogs
      puts "Dislike the idea of a 'dogs playing poker' theme? (y/n)"
      dogs_play_poker = gets.chomp
      likes_dogs = dogs_play_poker == "n"
      result[:likes_dogs] = likes_dogs
    elsif changed_key == :trump_fanatic
      puts "Love the thought of your home being dubbed as 'The Trump Tower 2.0'? (y/n)"
      trump_tower = gets.chomp
      trump_fanatic = trump_tower == "y"
      result[:trump_fanatic] = trump_fanatic
    else
      puts "That is not an option"
    end
when "n"
  puts "Thank you for your input. We will have an interior designer dispatched to your home shortly to create your envisioned dream of #{result[:decor_theme]}."
else
  puts "I didn't get that..."
end
