class CreateDrinkCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :drink_categories do |t|
      t.string :drink_category_name
      t.integer :drink_active_status
      t.timestamps
    end
  end
end
