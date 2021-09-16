class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string  :name
      t.string  :sort_description
      t.text    :long_description
      t.decimal :mrp, precision: 8, scale: 2
      t.integer :quantity

      t.timestamps
    end
  end
end
