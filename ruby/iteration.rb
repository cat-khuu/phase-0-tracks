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
# .each is best for looping through and printing OR looping through and adding a number to a sum
# .map is best used for modifying an array or hash.
# Declare an array and a hash, and populate each of them with some data.

main_floors_in_building = [3, 8, 11, 12, 13, 14, 18]

building_directory = {3 => ["Juvenile", "Southwest"], 8 => ["DDOU", "PNTF", "Tech"], 11 => ["Cental", "East", "Northeast", "Northwest", "South"], 12 => ["FVSA", "Homicide", "Victim Services"], 13 => ["Appeals", "Legal"], 14 => ["Pre-Trial"], 18 => ["ECCU", "Government Fraud", "Insurance Fraud", "Special Investigations", "Community Outreach"]}

puts "Array before .each is used."
p main_floors_in_building

puts "Array after .each is used."
puts "Print floors that are greater than or equal to 8."
main_floors_in_building.each do |floor|
if floor >= 8
  p floor
end
end

puts "Hash before .each is used."
p building_directory

puts "Hash after .each is used."
puts "Print only the values (floor divisions) of the hash."

building_directory.each do |floor, division| puts division
end

puts "Array using .map to print the next value from the number in the array. 8 => 9. 9 would not necessarily be an accessible floor in the building..."
modified_floors = main_floors_in_building.map do |floor|
  p floor
  floor.next
end

puts "Prints new array (modified_floors) to display result of .map used on array."
p modified_floors

puts "When I use .map! on the array, I don't have to reassign the results from .map to a new array (modified_floors). I can use the .map! and print the original array (main_floors_in_building)."

main_floors_in_building.map! do |floor|
  p floor
  floor.next
end

p main_floors_in_building