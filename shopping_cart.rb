class ShoppingCart

	attr_reader(:products)

	def initialize

		@products = []

	end

	def add_item_to_cart product
		@products.push product	
	end

	def show_fruits
		@products.each do |product|
			puts "#{product.quantity} #{product.description} #{product.price * product.quantity}"
		end

	end

	def total_price
		puts @products.reduce(0) {|sum,product| sum + (product.quantity * product.price)}
	end

	def number_products

	end
end

class Product

	attr_reader(:quantity, :description, :price)

	def initialize quantity, description, price 

		@quantity = quantity
		@description = description
		@price = price
		
	end

end

shopping_cart = ShoppingCart.new

shopping_cart.add_item_to_cart Product.new(2, "Apples", 10)
shopping_cart.add_item_to_cart Product.new(3, "Oranges", 5)
shopping_cart.add_item_to_cart Product.new(4, "Grapes", 15)
shopping_cart.add_item_to_cart Product.new(1, "Banana", 20)
shopping_cart.add_item_to_cart Product.new(1, "Watermelon", 50)

shopping_cart.show_fruits
shopping_cart.total_price


=begin
	
fruits = [
	Product.new("apples", 10),
	Product.new("oranges", 5),
	Product.new("grapes", 15),
	Product.new("banana", 20),
	Product.new("watermelon", 50),
]
=end
