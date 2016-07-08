## Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Use .split to separate individual items. Store in variable grocery_array
  # Establish empty hash within method. Store as grocery_hash
  # Use loop to push each item into grocery_hash (as keys)
  # Set default quantity as 0
  # Default quantity = values in grocery_hash
  # Iterate over hash to print each key (grocery item) and corresponding value (quantity)
# output: hash of grocery items (keys) and quanities (values)

def create_list(items)
  grocery_hash = {}
  quantity = 0
  grocery_array = items.split
  grocery_array.each do |items|
    grocery_hash[items] = quantity
  end
  return grocery_hash
end

p create_list("carrots apples pizza cereal")

grocery_list_hash = create_list("carrots apples pizza cereal")

# grocery_list_hash = create_list("carrots apples")

# Method to add an item to a list
# input: item name as a string and optional quantity as an integer
# steps:
# Create a new hash named hash
# Pass two arguments (item and quantity) through add_item method. Where the item would be the key, and quantity, the value.
# Merge grocery_list_hash with new hash using .merge!
# output: grocery_list_hash

def add_item(item, quantity, grocery_list_hash)
  hash = {item => quantity}
  grocery_list_hash.merge!(hash)
  return grocery_list_hash
end

p add_item("cake", 5, grocery_list_hash)

# add_item_to_list_hash = add_item("cake", 5)

# Method to remove an item from the list
# input: item as a string
# steps:
# Carry over hash from add_item method.
# Use .delete to delete the item (key) from the most recent hash
# output: grocery_list_hash

def remove_item(item, grocery_list_hash)
  grocery_list_hash.delete(item)
  return grocery_list_hash
end

p remove_item("pizza", grocery_list_hash)

# Method to update the quantity of an item
# input: Two variables - item (string) and quantity (integer)
# steps: Carry over hash from remove_item method
# grocery_list_hash[item] = quantity
# Assign quantity to item in grocery_list_hash
# output: grocery_list_hash

def update_item_quantity(item, quantity, grocery_list_hash)

  grocery_list_hash[item] = quantity
  return grocery_list_hash
end

p update_item_quantity("carrots", 10, grocery_list_hash)
p update_item_quantity("apples", 5, grocery_list_hash)
p update_item_quantity("cereal", 1, grocery_list_hash)

# Method to print a list and make it look pretty
# input: grocery_list_hash
# steps: Iterate over grocery_list_hash
# For each key-value pair print "#Pick up #{value} of #{key}"
# output: Printed list of items and quantities to buy at grocery

def print_list(grocery_list_hash)
  grocery_list_hash.each do |items, quantity|
    puts "Pick up #{quantity} #{items} at the store"
  end
end

p print_list(grocery_list_hash)

# --------------- REFLECTION -------------- #

# On your own, add a commented reflection section to your gps2_2.rb file. Answer the following questions in your reflection:

# What did you learn about pseudocode from working on this challenge? If I spend my time thinking through and writing the pseudocode for each method I need to write, then it greatly reduces the amount of time I spend just winging it. If I pseudocode beforehand, then I will have a good working outline of what I need to do for each step and how might I go about doing it.
# What are the tradeoffs of using arrays and hashes for this challenge? I think it's easier to access and store information in an array, but an array was not the best data structure to store our grocery list. If I needed just a list of items with no specified amount or type of item, then an array might work. However, with this challenge, a hash best suited the information we had and was the best way to store it.
# What does a method return? I am finally beginning to understand better a return value vs. printing an item. You can print an item (puts "#{item}"), but it will return nil unless you specify it: return item, or make sure the last line of the method is "#{item}" minus the puts. Because the last line of each method will be evaluated and returned.
# What kind of things can you pass into methods as arguments? You can pass a string, integer, variable, or even the result of another method (which was the case with this challenge). Seriously, my mind was blown when we were able to pass grocery_list_hash as an argument.
# How can you pass information between methods? For this challenge, we created another variable (grocery_list_hash) to store the result from the method (create_list). From then on, we passed grocery_list_hash as an argument. grocery_list_hash was a hash containing our items and defaulted quantities.
# What concepts were solidified in this challenge, and what concepts are still confusing? I'm still working on return value and puts vs p, but this challenge really helped me understand how values from other methods can be passed on to other methods without using a class.
