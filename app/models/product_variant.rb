class ProductVariant < ApplicationRecord
  belongs_to :product
  has_many :variant_options, dependent: :destroy
end
