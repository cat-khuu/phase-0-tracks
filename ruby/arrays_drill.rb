# 5.2 Arrays Pairing Challenge
# RELEASE 2

# DEFINE METHOD that will build an array
def build_array(x,y,z)
  array = []
  array.push(x,y,z)
end

# DEFINE METHOD that will add to an array
def add_to_array(x,y)
  array = x
  array.push(y)
end

#<----------- blank space ------------>

# RELEASE 1
# INITIALIZE an empty array
array = []

# PRINT array
p array

# ADD 5 items to the array
array.push("cheese", 22, "Happy Fourth of July!", "glitter", "bagels")

# PRINT the array
p array

# DELETE item at index 2
array.delete_at(2)

# PRINT the array
p array

# ADD an item at index 2
array.insert(2, "pizza pie")

# PRINT the array
p array

# DELETE the first item of the array w/o referring to its index
array.shift

# PRINT the array
p array

# INCLUDE item?
puts "array.include?('pizza pie') "
include = array.include?('pizza pie')
p include

# INITIALIZE a new array
array2 = ["pb", "jelly", "sandwich"]
p array2

# DEFINE METHOD add_arrays
def add_arrays(arr1, arr2)
  combined = arr1 + arr2
  return combined
end

#<----------- blank space ------------>

# CALL METHOD - RELEASE 1

p add_arrays(array, array2)


# CALL METHOD - RELEASE 2
p build_array(1, "two", nil)
p add_to_array([], "a")
p add_to_array(["a", "b", "c", 1, 2], 3)