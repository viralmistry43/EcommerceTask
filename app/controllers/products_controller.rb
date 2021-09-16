class ProductsController < ApplicationController
  before_action :set_product, only: %i[show add_to_cart]

  def index
    @search = params[:search]
    @products = Product.includes(:brand)
                       .where(
                         'LOWER(name) like ? or LOWER(sort_description) like ? or LOWER(long_description) like ?',
                         "%#{@search}%", "%#{@search}%", "%#{@search}%"
                       )
  end

  def show; end

  def add_to_cart
    Cart.create(product_id: @product.id, customer_id: 1)
    redirect_to product_path(@product)
  end

  private

  def set_product
    @product = Product.find_by_id(params[:id])
    redirect_to products_path if @product.blank?
  end
end
