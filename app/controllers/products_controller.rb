class ProductsController < ApplicationController

class Product
  attr_accessor :name, :price, :description, :picture
end

  def list
    @products = product_list
  end

  def detail
    @products = product_list
    @product = @products.find {|p| p.name == params[:id]}
    render_404 if @product.nil?
  end

  def product_list
    list = []

    bike = Product.new
    bike.name = 'Bike'
    bike.price = 50
    bike.description = "It's a bike..."
    # bike.picture = image_tag("monkey.gif")
    list << bike

    monkey = Product.new
    monkey.name = 'Monkey'
    monkey.price = 90
    monkey.description = "Friendly monkey..."
    # monkey.picture = image_tag("monkey.gif")
    list << monkey

    boat = Product.new
    boat.name = 'Boat'
    boat.price = 4000
    boat.description = "The best kind of boat is your friend's boat."
    list << boat


  end

end
