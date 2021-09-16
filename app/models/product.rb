class Product < ApplicationRecord
  belongs_to :brand
  has_many :product_variants, dependent: :destroy
  has_many :carts
  has_many :wishlists
end
