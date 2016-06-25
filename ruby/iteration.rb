# Write your own method that takes a block. Your method should print a status message before and after running the block.

def doggy_treats
  name = "Bob"
  puts "Who is a good dog?"
  yield(name)
  puts "Roll over. Sit ---"
  puts "*rolls over and sits*"
  puts "Good dog."
  puts "*munching sound*"
end

doggy_treats {|name| puts "Bark! Bark! Me! #{name}. I want treats!"}

# Use .each, .map, and .map!
# Declare an array and a hash, and populate each of them with some data.

main_floors_in_building = [3, 8, 11, 12, 13, 14, 18]

building_directory = {3: ["Juvenile", "Southwest"], 8: ["DDOU", "PNTF", "Tech"], 11: ["Cental", "East", "Northeast", "Northwest", "South"], 12: ["FVSA", "Homicide", "Victim Services"], 13: ["Appeals", "Legal"], 14: ["Pre-Trial"], 18: ["ECCU", "Government Fraud", "Insurance Fraud", "Special Investigations", "Community Outreach"]}


