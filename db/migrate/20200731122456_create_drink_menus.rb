class CreateDrinkMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :drink_menus do |t|
      t.integer :drink_category_id
      t.string :drink_name
      t.string :drink_explanation
      t.string :drink_price
      t.string :drink_sales_status
      t.timestamps
    end
  end
end
