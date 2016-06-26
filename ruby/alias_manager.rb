# Write a method that takes a spy's real name (e.g. "Felicia Torres") and creates a fake name with it by doing the following:
# Swapping the first and last name
# Changing all the vowels (a,e,i,o,u) to the next vowel in 'aeiou', and all of the consonants to the next consonants in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.
# "Felicia Torres" should return "Vussit Gimodoe"

# Take given name (e.g. "Felicia Torres")
# Convert letters to lowercase and convert string to array. Store result in arrayed_name. "Felicia Torres" => ["felicia", "torres"]
# Swap positions of the first and last name in arrayed_name.
# Convert array back into string of full name. Store result in full_name. This should return: ["torres", "felicia"] => "torres felicia"
# Substitute all vowels [aeiou] in full_name with the next vowel [eioua]. Substitute all consonants in full_name with the next consonant in the alphabet. Store result in full_name_id.
# Convert full_name_id back into array. Iterate through the array and capitalized the first letter in the first and last name. Convert the array back into a string. Store result in full_name_idx.

alias_history = {}

def alias_manager(covert_spy_name)
  arrayed_name = covert_spy_name.downcase.split(" ")
  full_name = arrayed_name.reverse.join(" ")
  full_name_id = full_name.gsub(/[abcdefghijklmnopqrstuvwxyz]/, 'a' => 'e', 'b' => 'c', 'c' => 'd', 'd' => 'f', 'e' => 'i', 'f' => 'g', 'g' => 'h', 'h' => 'j', 'i' => 'o', 'j' => 'k', 'k' => 'l', 'l' => 'm', 'm' => 'n', 'n' => 'p', 'o' => 'u', 'p' => 'q', 'q' => 'r', 'r' => 's', 's' => 't', 't' => 'v', 'u' => 'a', 'v' => 'w', 'w' => 'x', 'x' => 'y', 'y' => 'z', 'z' => 'b')
  full_name_idx = full_name_id.split.map {|x| x.capitalize}.join(' ')
end

# <--- commented out driver code for alias_manager --->
# p alias_manager("Felicia Torres")


# Provide a user interface that lets a user enter a name and get a fake name back. Let the user do this repeatedly until they decide to quit by typing 'quit'. (They might just hit Enter to continue.)

# Create empty hash to store given spy name(key) and new spy name (value). Name hash alias_history
# Prompt user for name
# Given name = covert_spy_name
# Call alias_manager. Pass covert_spy_name as argument.
# Print result from alias_manager
# Store result in alias_history, where covert_spy_name(given name) will be the key, and the result of alias_manager will be the value.
# Ask user if they are satisfied with their new spy name.
# - BEGIN LOOP
# IF "n", then ask user to enter another spy name.
# - Call alias_manager. Pass covert_spy_name as argument.
# - Print result from alias manager.
# ELSIF "y"
# - Print "Type 'quit' to exit and print your alias history."
# - Store user input in variable answer.
# ELSE print "I'm sorry, I didn't get that..."
# - DO UNTIL answer == "quit" to exit program and print alias history
# PRINT alias_history

