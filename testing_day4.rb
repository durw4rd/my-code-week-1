class Product
  attr_accessor :name, :description, :price, :id

  def initialize(name, description, price, id)
      @name = name
      @description = description
      @price = price
      @id = id
  end
end

class Category
  attr_accessor :name, :products

  def initialize(name, products)
    @name = name
    @products = products
  end
end

class Inventory
  def initialize
    @categories = []
    smokes = [
      prod01 = Product.new("Cuban cigars", "These were hand-rolled on the thighs of original Cuban mamasitas!", 25, 1),
      prod02 = Product.new("Jamaican smoke", "This one will send you right to the Stratosphere!", 30, 2)
    ]
    @categories << Category.new("Smokes", smokes)

    drinks = [
      Product.new("Carribean rum", "As soft as it gets!", 70, 3),
      Product.new("Mezcal", "Careful here, it will awake the demons in you!", 75, 4)
    ]
    @categories << Category.new("Drinks", drinks)
  end

  def show_categories
    @categories.each do |category|
      puts category.name
    end
  end

  # def show_category1
  #   @categories
  #   end
  # end


  def show_product_names
    @categories.each do |category|
      category.products.each do |product|
        puts "#{product.name}"
      end
    end
  end

  def get_product product_name
    @categories.each do |category|
      category.products.each do |product|
        if product.name == product_name
          return product
        end
      end
      "I'm terribly sorry but we don't have such thing in our stock."
    end
  end
end

#
# def show_product_names_with_choice
#   @categories.each do |category|
#     category.products.each do |product|
#       if
#       else
#       end
#
#
#     end
#   end
# end



@inventory = Inventory.new

@inventory.show_categories
puts "_________________________"

@inventory.show_product_names


# choice = gets.chomp.to_s
#
# @inventory.
