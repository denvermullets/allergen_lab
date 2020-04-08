class User < ActiveRecord::Base
    has_many :recipes
    # has_and_belongs_to_many :recipes

    has_many :allergens
    has_many :ingredients, :through => :allergens
end 