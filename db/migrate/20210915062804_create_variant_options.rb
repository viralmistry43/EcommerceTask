class CreateVariantOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :variant_options do |t|
      t.belongs_to :product_variant, index: true

      t.string  :name

      t.timestamps
    end
  end
end
