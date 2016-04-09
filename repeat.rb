# ARRAY & HASH

# products = ["rum", "whiskey", "cigars"]
#
# products.each_with_index do |product, index|
#   puts "#{index + 1}. #{product}"
# end
#
# puts "*" * 30
#
# products_hash = {
#   1 => "rum",
#   2 => "whiskey",
#   3 => "cigars"
# }
#
# products_hash.each do |key, product|
#   puts "#{key}. #{product}"
# end


# CLASS

# class Product
#   attr_reader :name
#
#   def initialize(name)
#     @name = name
#   end
#
# end
# 
# class Catalogue
#   def initialize
#     @list = []
#   end
#
#   def print_list
#     @list.each_with_index do |product, index|
#       puts "#{index + 1}. #{product.name}"
#     end
#   end
#
#   def add_product(product)
#     @list << product
#   end
# end
#
# catalogue = Catalogue.new
#
# banana = Product.new("banana")
# apple = Product.new("apple")
# pear = Product.new("pear")
#
# catalogue.add_product banana
# catalogue.add_product apple
# catalogue.add_product pear
#
# catalogue.print_list
