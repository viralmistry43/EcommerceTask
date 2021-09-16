class Customer < ApplicationRecord
  has_many :wishlists, dependent: :destroy
  has_many :carts, dependent: :destroy
end
