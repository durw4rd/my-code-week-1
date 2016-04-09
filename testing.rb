# def ask( msg )
#    print msg
#    gets.chomp
# end
#
# print "Tell me about a song.\n"
#
# song_title = ask "Title?\n"
# song_artist = ask "Artist?\n"
# song_released = ask "Year released?\n"


def build_inventory
  add_to_inventory("Cigars", 150, 35.0)
  add_to_inventory(:product => "Carribean Rum", :quantity => 40, :price => 70.0)
  add_to_inventory(:product => "Fake Slave", :quantity => 1, :price => 1000.0)
end
#
# def add_to_inventory(product, quantity, price)
#   @inventory << "product"
#   [product] = {
#     "quantity" => quantity,
#     "price" => price
#   }
# end

#from miriam --->
@products = {
  :mats => [
    { :reference_number => 1234, :name => "Mat 1", :price => 10 },
    { :reference_number => 1235, :name => "Mat 2", :price => 20 },
  ],
  :props => [
    { :reference_number => 1234, :name => "Block", :price => 30 },
    { :reference_number => 1234, :name => "Meditation cushion", :price => 30 },
  ],
  :clothes => [
    { :reference_number => 1236, :name => "The best T-shirt", :price => 200 },
    { :reference_number => 1236, :name => "The cutest yoga pants", :price => 300 },
  ],
  :books => [
    { :reference_number => 1237, :name => "Bring Yoga To Life", :price => 30 },
    { :reference_number => 1237, :name => "Light On Yoga", :price => 10 },
  ]
}

@products.each do |category, products|
    puts "*" * 40
    puts "#{category.to_s.capitalize}:"
    puts "*" * 40

    products.each do |product|
      puts "Reference nr.: #{product[:reference_number]}"
      puts "Product: #{product[:name]}"
      puts "Price: #{product[:price]} EUR"
      puts "-" * 40
    end
  end

#updated from miriam --->

  @cart = []

@categories = [ :mats, :props, :clothes, :books ]

@products = {
  :mats => [
    { :reference_number => 1234, :name => "Mat 1", :price => 10 },
    { :reference_number => 1235, :name => "Mat 2", :price => 20 },
  ],
  :props => [
    { :reference_number => 1234, :name => "Block", :price => 30 },
    { :reference_number => 1234, :name => "Meditation cushion", :price => 30 },
  ],
  :clothes => [
    { :reference_number => 1236, :name => "The best T-shirt", :price => 200 },
    { :reference_number => 1236, :name => "The cutest yoga pants", :price => 300 },
  ],
  :books => [
    { :reference_number => 1237, :name => "Bring Yoga To Life", :price => 30 },
    { :reference_number => 1237, :name => "Light On Yoga", :price => 10 },
  ]
}

def select_category
  puts "Check out our departments:"

  @categories.each do |category|
    puts "#{category.to_s}"
  end

  puts "-" * 40
  puts "Please select one by its name:"
  gets.chomp
end

def show_products(category)
  category = category.to_sym

  @products[category].each do |product|
    puts "Reference nr.: #{product[:reference_number]}"
    puts "Product: #{product[:name]}"
    puts "Price: #{product[:price]} EUR"
    puts "-" * 40
  end
end

puts "Welcome to the Yoga Shop!"
category = select_category
puts "*" * 40
show_products(category)

# code from miriam no3 ---->

@shopping_cart = []

@categories = [ :mats, :props, :clothes, :books ]

@products = {
  :mats => [
    { :reference_number => 1231, :name => "Mat 1", :price => 10 },
    { :reference_number => 1232, :name => "Mat 2", :price => 20 },
  ],
  :props => [
    { :reference_number => 1233, :name => "Block", :price => 30 },
    { :reference_number => 1234, :name => "Meditation cushion", :price => 30 },
  ],
  :clothes => [
    { :reference_number => 1235, :name => "The best T-shirt", :price => 200 },
    { :reference_number => 1236, :name => "The cutest yoga pants", :price => 300 },
  ],
  :books => [
    { :reference_number => 1237, :name => "Bring Yoga To Life", :price => 30 },
    { :reference_number => 1238, :name => "Light On Yoga", :price => 10 },
  ]
}

def select_category
  puts "Check out our departments:"

  @categories.each do |category|
    puts "#{category.to_s}"
  end

  puts "-" * 40
  puts "Please select one by its name:"
  gets.chomp
end

def show_products(category)
  puts "*" * 40

  category = category.to_sym
  products = @products[category]

  products.each do |product|
    puts "Reference nr.: #{product[:reference_number]}"
    puts "Product: #{product[:name]}"
    puts "Price: #{product[:price]} EUR"
    puts "-" * 40
  end

  products
end

def choose_reference_number
  puts "Select item to buy by its reference_number:"
  gets.chomp
end

def add_product_to_card(products, reference_number)
  while true
    product = look_up_product(products, reference_number)
    if product != nil
      @shopping_cart << product
      puts "Congratulations. '#{product[:name]}' has been added to the cart!"
      break
    else
      puts "I don't think you selected a valid reference_number. Try again:"
    end
  end
end

def look_up_product(products, reference_number)
  products.each do |product|
    if product[:reference_number] == reference_number.to_i
      return product
    end
  end

  nil
end

def print_cart
  puts "*" * 40
  puts "CURRENT SHOPPING CART"
  puts "*" * 40
  @shopping_cart.each do |product|
    puts "Reference nr.: #{product[:reference_number]}"
    puts "Product: #{product[:name]}"
    puts "Price: #{product[:price]} EUR"
    puts "-" * 40
  end

  @shopping_cart
end

puts "Welcome to the Yoga Shop!"
category = select_category
products = show_products(category)
reference_number = choose_reference_number
add_product_to_card(products, reference_number)
print_cart
