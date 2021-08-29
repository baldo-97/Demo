class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.string :product_name
      t.decimal :price
      t.integer :quantity
      t.date :sale_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
