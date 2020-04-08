class CreateAllergen < ActiveRecord::Migration[6.0]
  def change
    create_table :allergens do |t|
      t.belongs_to :user
      t.belongs_to :ingredient

    end
  end
end
