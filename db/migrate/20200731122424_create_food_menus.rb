class CreateFoodMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :food_menus do |t|
      t.integer :food_category_id
      t.string :food_name
      t.string :food_explanation
      t.string :food_price
      t.string :takeout
      t.string :food_sales_status
      t.timestamps
    end
  end
end
