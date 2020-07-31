class CreateFoodCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :food_categories do |t|
      t.string :food_category_name
      t.integer :food_active_status
      t.timestamps
    end
  end
end
