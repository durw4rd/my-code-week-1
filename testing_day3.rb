# PRODUCT
class Product
  attr_accessor :name, :description, :quantity, :price, :id

  def initialize(name, description, quantity, price, id)
      @name = name
      @description = description
      @quantity = quantity
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
    smoking_products = [
      Product.new("Cuban cigars", "These were hand-rolled on the thighs of the original Cuban mamasitas!", 15, 35, 0),
      Product.new("Jamaican smoke", "It will send you right to the Stratosphere!", 10, 30, 1)
    ]
    @categories << Category.new("Smokes", smoking_products)

    drinking_products = [
      Product.new("Carribean rum", "As soft as a newborn!", 8, 70, 2),
      Product.new("Mezcal", "Careful here, it will awake the demons in you!", 6, 75, 3)
    ]
    @categories << Category.new("Drinks", drinking_products)
  end

  def get_product product_name
    @categories.each do |category|
      category.products.each do |product :id|
        if product.name == product_name
          return product    :id
        end
      end
      "I'm terribly sorry but we don't have such thing in our stock."
    end
  end



























  def show_inventory
    @categories.each do |category|
      puts "*" * 40
      puts category.name
      category.products.each do |produt|
        puts ">>> #{product.name}"
      puts "*" * 40
      end
    end
  end
end

class Shop
  def initialize
    @inventory = Inventory.new
  end

  def


# EXECUTE
inventory = Inventory.new
inventory.show_inventory




# class Inventory
#   def initialize
#     @categories = []
#     smokes = [
#       Product.new("Cuban Cigars", "These were hand-rolled on the thighs of original Cuban mamasitas!", 15, 35, 0),
#       Product.new("Jamaican Smoke", "It will send you right to the Stratosphere!", 5, 30, 1)
#     ]
#     @categories << Category.new("Smokes", smokes)
#
#     drinks = [
#       Product.new("Carribean Rum", "As soft as a newborn!", 8, 70, 2),
#       Product.new("Mezcal", "Careful here, it will wake the demons in you!", 5, 75, 3)
#     ]
#     @categories << Category.new("Drinks", drinks)
#   end
# end
