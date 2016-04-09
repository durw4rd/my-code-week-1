@inventory = {}
@cart = []
@total_cart_value = 0.0

def build_inventory
  add_to_inventory("Cigars", 150, 35.0)
  add_to_inventory("Carribean Rum", 40, 70.0)
  add_to_inventory("Fake Slave", 1, 1000.0)
end

def add_to_inventory(product, quantity, price)
  @inventory[product] = {
    "quantity" => quantity,
    "price" => price
  }
end

# def take_from_inventory(product, quantity)
#   @inventory[product] = {
#
#   }
# end

def show_inventory
  puts "Our inventory currently holds (not for public eyes):

  #{@inventory}
  "
end

@total_price = 0.0
if @total_price < 0.0
  @total_price = 0.0
end

def add_to_price(price, quantity = 1)
  @total_price += (price * quantity)
end

def ini_offer
  puts "Here's what we have on offer:

  1) Cigars
  2) Slaves
  3) Carribean Rum

  Please choose ur thing [1-3]."

  choice = gets.chomp.to_i

  if choice == 1
    price = 35.0
    puts "You have chosen cigars, very nice choice! The price is #{price}€ apiece!
    How many would you like?"
    quantity = gets.chomp.to_i
    add_to_price(price, quantity)
  elsif choice == 2
    price = 1000.0
    quantity = 1
    puts "You have chosen slaves, get the f*ck out of my store you evil!

    Or, since I'm in a good mood, you can make a new choice!
    By the way I have charged you a penalty of #{price}€ for attempting human trade."
    add_to_price(price, quantity)
    ini_offer
  elsif choice == 3
    price = 70.0
    puts "You have chosen a Carribean Rum, fine choice sir! Price is #{price}€ per bottle.
    How many would you like?"
    quantity = gets.chomp.to_i
    add_to_price(price, quantity)
  else
    price = 50.0
    quantity = 1
    puts "Oh, you dummy... Try again: 1, 2 or 3.
    By the way I'm charging you extra #{price} bucks for being little annoying."
    add_to_price(price, quantity)
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


build_inventory
show_inventory
puts "Welcome in our shopping mall!"
ini_offer
