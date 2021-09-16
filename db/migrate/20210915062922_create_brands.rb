class CreateBrands < ActiveRecord::Migration[6.1]
  def change
    create_table :brands do |t|
      t.string  :name
      t.string  :phone
      t.string  :email
      t.string  :address

      t.timestamps
    end

    add_reference :products, :brand, index: true
  end
end
