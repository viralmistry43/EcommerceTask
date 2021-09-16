class CreateWishlists < ActiveRecord::Migration[6.1]
  def change
    create_table :wishlists do |t|
      t.belongs_to :product, index: true
      t.belongs_to :customer, index: true

      t.timestamps
    end
  end
end
