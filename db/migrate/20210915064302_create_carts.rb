class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.belongs_to :product, index: true
      t.belongs_to :customer, index: true

      t.timestamps
    end
  end
end
