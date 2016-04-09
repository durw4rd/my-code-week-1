@inventory = []

@inventory = [
  {:name => "Cigars", :quantity => 15, :price => 35.0, :code => 1},
  {:name => "Surprise Item", :quantity => 1, :price => 250.0, :code => 2},
  {:name => "Carribean Rum", :quantity => 8, :price => 70.0, :code => 3}
]

def show_inventory
  puts
  puts "-" * 40
  @inventory.each do |product|
    puts "Product:      #{product[:name]}"
    puts "Available:    #{product[:quantity]} pc."
    puts "Price:        #{product[:price]}€"
    puts "To select this item, type:   #{product[:code]}"
    puts "-" * 40
  end
end

def add_to_inventory
  puts "What product would you like to add to the inventory?"
  name = gets.chomp.to_s
  puts "How many pieces of #{name} would you like to add?"
  quantity = gets.chomp.to_i
  puts "How much does #{name} cost?"
  price = gets.chomp.to_f

  @inventory << {:name => name, :quantity => quantity, :price => price, :code => @inventory[-1][:code] + 1}
  puts "Congrats, you have added #{quantity} pieces of #{name}, #{price}€ each!\n"
end

# def remove_item
#
# end

@total_price = 0.0
if @total_price < 0.0
  @total_price = 0.0
end
@cart = []
@total_cart_value = 0.0

def add_to_price(price, quantity = 1)
  @total_price += (price * quantity)
end

def ini_offer
#replace this with show_inventory method - update based on the
  puts "Here's what we have on the offer:"

  show_inventory

  puts "Would you like to see something else on the offer?\n"
  puts "Type:      99"
  puts "-" * 40

  puts "Please make your choice [number]."

  choice = gets.chomp.to_i

  if choice == 1
    price = @inventory[0][:price]
    puts "You have chosen #{@inventory[0][name]}, very nice choice! The price is #{price}€ apiece and we currently have #{@inventory[0][:quantity]} pieces!"
    puts "How many would you like?"
    quantity = gets.chomp.to_i
    add_to_price(price, quantity)
    ini_offer
  elsif choice == 2
    price = @inventory[1][:price]
    puts "You have chosen #{@inventory[1][name]}, very brave choice!
    The price of this item is #{price}€ and we currently have #{@inventory[1][:quantity]} piece in store. How many surprises do you want?"
    quantity = gets.chomp.to_i
    add_to_price(price, quantity)
    ini_offer
  elsif choice == 3
    price = @inventory[2][:price]
    puts "You have chosen #{@inventory[2][name]}, fine choice sir (or madam)! Price is #{price}€ per bottle. We're currently holding #{@inventory[2][:quantity]} bottles of this precious liquor.
    How many would you like?"
    quantity = gets.chomp.to_i
    add_to_price(price, quantity)
  elsif choice == 99
    add_to_inventory
    ini_offer
  else
    price = 50.0
    puts "Oh, you dummy... Try again, this time something that's on offer."
    puts "By the way I'm charging you extra #{price} bucks for being little annoying."
    add_to_price(price, 1)
    ini_offer
  end
  calculation
end

def calculation
  puts "Ok, let's see - so far that makes #{@total_price}€."
  puts "Adding some €€€ coz I don't like you!"
  add_to_price(123)
  puts
  puts "In total that's #{@total_price}€!"
  puts "Is there something else I can do for you? [y/n]"
  follow_up
end

def show_the_bill
  puts "At the moment it makes: #{@total_price}€!"
end

def follow_up
  reply = gets.chomp
  if reply == "y"
    puts "Excellent, let me know your wish then!"
    ini_offer
  elsif reply == "n"
    puts "OK then, let's see ur gold then!"
    pay
  else
    puts "Pardon me? Did you say 'yes' [y] or 'no' [n]?"
    follow_up
  end
end

def pay
  puts "Gimme #{@total_price}€ before I change my mind.

  How many gold pieces you have?"
  gold_piece = gets.chomp.to_i
  @payment = gold_piece * 50.0
  puts "That makes for #{@payment}€."
  @total_price -= @payment

  if @total_price > 0.0
    puts "Need more money, honey. What else you get there, maybe some silver?"
    silver_piece = gets.chomp.to_i
    @payment2 = silver_piece * 25.0
    puts "That makes for additional #{@payment2}€."
    @total_price -= @payment2
      if @total_price > 0.0
        puts "...and it's still not enough, eat some lead you sneaky bastard!
        Ra-ta-ta-ta-ta (machine gun shots)"
      else
        puts "Thats it, thanks for the purchase and come back soon!
        If you overpaid, I hope you don't expect me to give you any change back, do you?!"
      end
  else
    puts "Thats it, thanks for the purchase and come back soon!
    If you overpaid, I hope you don't expect me to give you any change, do you?!"
  end
end


puts "Welcome in our shopping mall!\n"
ini_offer
