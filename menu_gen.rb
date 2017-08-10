# Create a random menu generator that can be played from the Terminal.
# Your generator should pull one item from each array you made
# in the baseline requirements to create a "menu item".
# When the program runs, it should create and show a list of ten numbered menu items.

adjectives = ["hot", "lukewarm", "slimy", "slippery", "savory", "delicious", "sweet", "salty", "chocolatey", "robust"]
cooking_style = ["pan-fried", "fried", "steamed", "baked", "sauteed", "microwaved", "roasted", "barbecued", "raw", "beer-batterd"]
food = ["chicken", "fish", "pork", "zucchini", "broccoli", "squash", "beef", "buffalo burger", "chicken fried steak", "waffles"]

puts "-" * 15 + "Menu" + "-" * 15

10.times do |num|
  puts "#{num + 1}. #{adjectives.sample} #{cooking_style.sample} #{food.sample}"
end

# Test for the following:
#
# The menu items are selected randomly.
# There are 10 menu items.
# Each item should pull one word from each of the 3 arrays.
# The items are numbers 1-10 (not starting at zero).
# Run the program a few times and ensure that the last word in the arrays are used.
# Also ensure that the first word in the arrays are used at least occasionally.


# ****** Additional Considerations/Challenges *****
# Expand your solution to ensure that no descriptive term in a menu item is ever repeated.
# So if the first menu item is hot pan-fried dumplings, the the phrases hot,
# pan-friend and dumpling cannot individually be used in any other menu items.

# 10.times do |num|
#   a = adjectives.sample
#   b = cooking_style.sample
#   c = food.sample
#   puts "#{num+1}. #{a} #{b} #{c}"
#   adjectives.delete(a)
#   cooking_style.delete(b)
#   food.delete(c)
# end

# Expand your solution to allow the user to determine how many items they'd
# like to see via user input. Note: You will need to ensure that this user-chosen number of items is not larger
# than the number of items you have in your arrays.

# puts "How many items would you like to see?"
# items = gets.chomp.to_i
# until items <= 10
#   puts "Please select a number under 10."
#   items = gets.chomp.to_i
# end
#
# items.times do |num|
#   a = adjectives.sample
#   b = cooking_style.sample
#   c = food.sample
#   puts "#{num+1}. #{a} #{b} #{c}"
#   adjectives.delete(a)
#   cooking_style.delete(b)
#   food.delete(c)
# end

# Instead of using hardcoded or predefined arrays, make your program accept user input.
# This user input will be utilized to generate the menu items.
# You'll need to prompt for and store a varying number of entries for each food-type array.
# adjectives = []
# cooking_style = []
# food = []
#
# puts "Please enter 10 food adjectives."
# 10.times do |entry|
#   adjectives << gets.chomp
# end
#
# puts "Please enter 10 food preparation techniques (past tense)."
# 10.times do |entry|
#   cooking_style << gets.chomp
# end
#
# puts "Please enter 10 different food items."
# 10.times do |entry|
#   food << gets.chomp
# end
#
# 10.times do |num|
#   puts "#{num + 1}. #{adjectives.sample} #{cooking_style.sample} #{food.sample}"
# end
