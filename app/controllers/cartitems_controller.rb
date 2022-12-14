class CartitemsController < ApplicationController
    def new
        @cartitem = Cartitem.new(product_id: params[:product_id])
    end
    def create 
        cart = Cartitem.new(
            product_id: params[:cartitem][:product_id],
            cart_id: current_cart.id,
            qty: params[:cartitem][:qty])
        cart.save
        redirect_to carts_show_path
    end

    def destroy
        cartitem = Cartitem.find(params[:id])
        if cartitem.destroy
            redirect_to cartitems_shows_path
        end
    end
end