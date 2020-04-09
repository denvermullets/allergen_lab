class CreateRecipeIngredient < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_ingredients do |t|
      t.belongs_to :recipe
      t.belongs_to :ingredient
      t.belongs_to :measurement_unit
      t.belongs_to :measurement_portion

    end
  end
end
