class WishlistsController < ApplicationController
  before_action :set_product, only: %i[add_to_wishlist]

  def index
    @wishlists = Wishlist.includes(:product).all
  end

  def add_to_wishlist
    Wishlist.create(product_id: @product.id, customer_id: 1)
    redirect_to product_path(@product)
  end

  def remove_to_wishlist
    @wishlist = Wishlist.find_by_id(params[:id])

    @wishlist.delete if @wishlist.present?
    redirect_to wishlists_path
  end

  private

  def set_product
    @product = Product.find_by_id(params[:id])
    redirect_to products_path if @product.blank?
  end
end
