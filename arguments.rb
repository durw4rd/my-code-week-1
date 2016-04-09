@total_price = 0.0

def add_to_price(price, quantity = 1)
  @total_price += (price * quantity)
end

price = 35
puts "The cigars are #{price}€ today! How many do you want?"
quantity = gets.chomp.to_i

add_to_price(price, quantity)

@sum = price * quantity

puts "Ok, let's see - that makes #{@sum}€."
puts "Adding €€€ coz I don't like you!"
add_to_price(100)
puts
puts "In total that's #{@total_price}€!"





@total_price = 0.0

def add_to_price(price, quantity = 1)
  @total_price += (price * quantity)
end

price = 5.0
puts "The hamsters are #{price} today! How many do you want?"
amount = gets.chomp.to_i

add_to_price(price, amount)

puts "Adding shipping cost of €15"
add_to_price(15)

puts @total_price
