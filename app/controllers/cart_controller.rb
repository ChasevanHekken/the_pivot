class CartController < ApplicationController

  def index
    @items = Item.all
    @cart = session[:cart]
    @cart_items = []
    get_cart_items
  end

  def get_cart_items
    if cart_has_items
      cart_line_items = Hash.new
      @cart.each do |line_item|
        cart_line_items[:item_id] = Item.find(line_item["item_id"])
        cart_line_items[:fillings] = line_item["filling_ids"].map { |filling_id| Filling.find(filling_id) }
        cart_line_items[:quantity] = line_item["quantity"]
      @cart_items << cart_line_items
      end
    else
      redirect_to root_path, notice: "Your cart is empty.  Please fill it up and give us money!"
    end
  end

  def cart_has_items
    @cart.nil? == false
  end


  def create
    session[:cart] ||= []
    line_item = {"item_id" => params["item_id"], 
                 "filling_ids" => params["item"]["filling_ids"], 
                 "quantity" => params["quantity"]
                }
    session[:cart] << line_item
    redirect_to cart_index_path, notice: "Cart created. Please log in."

    # session[:cart] ||= {}
    # session[:cart][params[:item_id]] = params[:item][:filling_ids]
    # redirect_to cart_index_path, notice: "User created. Please log in."
  end

  def update
  end
end