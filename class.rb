# PRODUCT
class Product
  attr_accessor :name, :description, :price, :id

  def initialize(name, description, price, id)
      @name = name
      @description = description
      @price = price
      @id = id
  end
end


# CATEGOTY
class Category
  attr_accessor :name, :products

  def initialize(name, products)
    @name = name
    @products = products
  end
end


# INVENTORY
class Inventory
  def initialize
    @categories = []
    smokes = [
      Product.new("Cuban cigars", "These were hand-rolled on the thighs of original Cuban mamasitas!", 25, 1),
      Product.new("Jamaican smoke", "This one will send you right to the Stratosphere!", 30, 2)
    ]
    @categories << Category.new("Smokes", smokes)

    drinks = [
      Product.new("Carribean rum", "As soft as it gets!", 70, 3),
      Product.new("Mezcal", "Careful here, it will awake the demons in you!", 75, 4)
    ]
    @categories << Category.new("Drinks", drinks)
  end

  def get_product product
    @categories.each do |category|
      category.products.each do |product|
        if product.name == product
          return product
        end
      end
      "I'm terribly sorry but we don't have such thing in our stock."
    end
  end

  def list
    puts "-" * 40
    @categories.each do |category|
      puts category.name
      category.products.each do |product|
        puts ">>> #{product.id}) #{product.name}"
      end
    end
    puts "-" * 40
  end

end

# CART
class Cart
  def initialize
    @products = []
  end

  def add_product product
    @products << product
  end

  def total_amount
    sum = 0
    @products.each do |product|
      sum += product.price
    end
    return sum
  end

  def list
    puts "-" * 40
    puts "So far, you have ordered the following:"
    @products.each do |product|
      puts product.name
    end

    puts "Bill: #{total_amount.to_f}€"
    puts "-" * 40
  end
end

# SHOP
class Shop
  def initialize
    @inventory = Inventory.new
    @cart = Cart.new
  end

  def show_inventory
    @inventory.list
  end

  def show_cart
    @cart.list
  end

  def checkout
    puts "Left to be paid: #{@cart.total_amount}€"
  end

  def ini_menu
    puts "Welcome to my humble shop!  "
    puts "~" * 40
    puts "1) Show me what's on the menu!"
    puts "2) Ehm, what did I buy so far?"
    puts "3) Seems enough to get me proper wasted, bill please."
    puts "~" * 40
  end

  def shop_for_item
    shopping = true

    while shopping do
      ini_menu
      puts "What is it gonna be?"
      puts "Type a number."

      choice = gets.chomp.to_i

      if choice == 1
        show_inventory
        puts "Is there anything that grabbed your attention?"
        puts "Select by typing the name of the delight:"
        name = gets.chomp.capitalize

        product = @inventory.get_product name
        @cart.add_product(product)
        puts "You have added #{name} to your cart!"
      elsif choice == 2
        show_cart
      elsif choice == 3
        puts "As his highness pleases!"
        checkout
        shopping = false
      else
        puts "Sorry, didn get that."
      end

    end
  end
end

# EXECUTION
shop = Shop.new
# shop.shop_for_item

@inventory.get_product
