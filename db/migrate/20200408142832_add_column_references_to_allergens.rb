class AddColumnReferencesToAllergens < ActiveRecord::Migration[6.0]
  def change
    add_column :allergens, :user_id, :integer
    add_column :allergens, :ingredient_id, :integer
  end
end
