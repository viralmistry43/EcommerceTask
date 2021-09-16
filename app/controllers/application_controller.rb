class ApplicationController < ActionController::Base
  before_action :fetch_cart

  def fetch_cart
    @cart_count = Cart.count
  end
end
