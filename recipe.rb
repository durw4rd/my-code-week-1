#in the market
shopping_list = []
@my_bag = []
# ingredients = []
# @total_price = 0.0

@ingredient0 = {"name" => "tortillas", "quantity" => 6, "price" => 1.00}
@ingredient1 = {"name" => "tomatoes", "quantity" => 3, "price" => 0.50}
@ingredient2 = {"name" => "onion", "quantity" => 1, "price" => 0.25}
@ingredient3 = {"name" => "garlic cloves", "quantity" => 2, "price" => 0.75}
@ingredient4 = {"name" => "tomato juice cans", "quantity" => 2, "price" => 1.50}
# ingredient5 = {"name" => "ts ground cumin", "quantity" => 1, "price" => 7.25}
# ingredient6 = {"name" => "ts coriander", "quantity" => 1, "price" => 6.50}
# ingredient7 = {"name" => "ts red pepper", "quantity" => 1, "price" => 5.00}
# ingredient8 = {"name" => "green onions", "quantity" => 4, "price" => 1.30}
# ingredient9 = {"name" => "cup lime juice", "quantity" => 1/2, "price" => 2.50}
# ingredient10 = {"name" => "fresh cilantro leaves", "quantity" => 10, "price" => 0.20}
# ingredient11 = {"name" => "avocado", "quantity" => 1, "price" => 2.50}

shopping_list << @ingredient0["quantity"] << @ingredient0["name"]
shopping_list << @ingredient1["quantity"] << @ingredient1["name"]
shopping_list << @ingredient2["quantity"] << @ingredient2["name"]
shopping_list << @ingredient3["quantity"] << @ingredient3["name"]
shopping_list << @ingredient4["quantity"] << @ingredient4["name"]

# << ingredient1 << ingredient2 << ingredient3 << ingredient4 << ingredient5 << ingredient6 << ingredient7 << ingredient8 << ingredient9 << ingredient10 << ingredient11

puts "Your shopping list: #{shopping_list}."

def add_to_my_bag(name, quantity)
  @my_bag << [ingredient0]["name", "quantity"]
end
#
# def add_to_price(price, quantity = 1)
#   @total_price += (price * quantity)
# end
#
puts "Buy ingredients from the shopping list."

for ingredient in 1..5
  puts "What do you wanna buy?"
  name = gets.chomp
  puts "How much #{name} do you wanna buy?"
  quantity = gets.chomp.to_i

  add_to_my_bag(name, quantity)
  puts "#{quantity} #{name} added to your bag."

  # add_to_price
  # puts "Your bill so far is #{@total_price}"
end


#
# #prepping ingredients
# # while quantity > 0
# #   puts "Pull "
# my_bag.each do | name, quantity |
#   puts "Pull #{quantity} #{name} out of the bag."
#   ingredients.push("name", "quantity")
# end

#some recipe stuff
# puts "Preheat oven to 400°."
# for ingredients[0] Brush tortillas with 1 Tbsp. oil.

 # cut tortillas in half.
 # Stack tortilla halves, and cut crosswise into 1/4-inch-wide strips. Arrange strips in a single layer on a lightly greased baking sheet. Season with salt and pepper. Bake 15 minutes or until golden, stirring halfway through. Cool.

#mixing the stuff together


#serving




#scrape potatos
# counter = 1
# while counter < 6
#   puts "Scrape potato #{counter}."
#   counter += 1
# end

#put potatos in pan
# for counter in 1..5
#   puts "add potato #{counter} to the pan."
# end
#
# puts "add onion to the pan."

# collection_of_items = ["item0", "item1", "item2", "item3"]
#
# collection_of_items.each do |thing|
#   puts "counting you: #{thing}"
# end

#collecting ingredients
# ingredients = {
#   "potatoes" => 5,
#   "eggs" => 6
# }
#
# ingredients["onions"] = 2
#
# ingredients.each do | ingredient, amount |
#   puts "Take #{amount} #{ingredient}."
# end

# ingredients = []
#
# ingredient1 = {"name" => "potatoes", "amount" => 5}
# ingredient2 = {"name" => "eggs", "amount" => 6}
# ingredient3 = {"name" => "onions", "amount" => 2}
#
# ingredients << ingredient1
# ingredients << ingredient2
# ingredients << ingredient3
#
# print ingredients
