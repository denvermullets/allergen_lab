class Recipe < ActiveRecord::Base
    # belongs_to :user
    has_and_belongs_to_many :users

    has_many :recipe_ingredients
    has_many :ingredients, :through => :recipe_ingredients

    has_many :measurement_quantities, :through => :recipe_ingredients
    has_many :measurement_units, :through => :recipe_ingredients
end 