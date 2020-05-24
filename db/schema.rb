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

ActiveRecord::Schema.define(version: 2020_05_24_044112) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "main_purpose"
    t.string "verdict"
    t.integer "good_for_skin"
    t.string "other_names", default: [], array: true
  end

  create_table "ingredients_products", id: false, force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "ingredient_id"
    t.index ["ingredient_id"], name: "index_ingredients_products_on_ingredient_id"
    t.index ["product_id"], name: "index_ingredients_products_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.float "price"
    t.string "picture"
    t.string "company"
    t.string "name"
    t.string "buy_online"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sources", force: :cascade do |t|
    t.bigint "ingredient_id"
    t.string "source"
    t.string "url"
    t.index ["ingredient_id"], name: "index_sources_on_ingredient_id"
  end

end
