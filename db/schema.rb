# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_08_152614) do

  create_table "allergens", force: :cascade do |t|
    t.integer "user_id"
    t.integer "ingredient_id"
    t.index ["ingredient_id"], name: "index_allergens_on_ingredient_id"
    t.index ["user_id"], name: "index_allergens_on_user_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
  end

  create_table "measurement_portions", force: :cascade do |t|
    t.integer "portions"
  end

  create_table "measurement_units", force: :cascade do |t|
    t.string "desc"
  end

  create_table "recipe_ingredients", force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "ingredient_id"
    t.integer "measurement_unit_id"
    t.integer "measurement_portion_id"
    t.index ["ingredient_id"], name: "index_recipe_ingredients_on_ingredient_id"
    t.index ["measurement_portion_id"], name: "index_recipe_ingredients_on_measurement_portion_id"
    t.index ["measurement_unit_id"], name: "index_recipe_ingredients_on_measurement_unit_id"
    t.index ["recipe_id"], name: "index_recipe_ingredients_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "user_id"
    t.index ["user_id"], name: "index_recipes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "bio"
  end

end
