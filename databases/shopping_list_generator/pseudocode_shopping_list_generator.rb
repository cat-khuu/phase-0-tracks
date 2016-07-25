# pseudocode display_seasonal_vegetables
# input: database, month - string
# output: list of seasonal vegetables for given month
# IF month == either March, April, or May, then...
# - SELECT spring_veg_name FROM Spring WHERE #{month}='true'
# ELSIF month == either June, July, or August, then...
# - SELECT summer_veg_name FROM Summer WHERE #{month}='true'
# ELSIF month == either September, October, or November, then...
# - SELECT fall_veg_name FROM Fall WHERE #{month}='true'
# ELSIF month == either December, January, or February, then...
# - SELECT winter_veg_name FROM Winter WHERE #{month}='true'
# Store outcome from SELECT command in variable result
# Iterate over result, and print each item as a string


# pseudocode to add items to Shopping_list
# input: vegetable - string
# output: updated array - shopping_list
# Create loop:
# - Set default value, where done = false
# Until done = true ask the user if there is anything they would like to add to the shopping_list
# When user types done, then done = true, and loop terminates
# Print the updated list


# pseudocode to remove item from Shopping_list
# Ask the user if there is anything they would like to remove, y/n
# IF 'y', then ask user which item they want to remove
# - "DELETE FROM Shopping_list WHERE item_name = (?)", [remove_item]
# ELSE
# - print "Printing your shopping list..."
# Select all items from Shopping_list and store in variable updated_list.
# Iterate over updated_list, and print each item from the array.
