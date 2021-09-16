class CreateProductVariants < ActiveRecord::Migration[6.1]
  def change
    create_table :product_variants do |t|
      t.belongs_to :product, index: true

      t.string  :name
      t.string  :variant_type

      t.timestamps
    end
  end
end
