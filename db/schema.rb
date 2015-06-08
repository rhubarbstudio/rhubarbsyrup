# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150605232636) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ingredients", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "track"
    t.string   "step"
    t.string   "method"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingredients_products", force: true do |t|
    t.integer  "product_id"
    t.integer  "ingredient_id"
    t.integer  "instance_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ingredients_products", ["ingredient_id"], name: "index_ingredients_products_on_ingredient_id", using: :btree
  add_index "ingredients_products", ["instance_id"], name: "index_ingredients_products_on_instance_id", using: :btree
  add_index "ingredients_products", ["product_id"], name: "index_ingredients_products_on_product_id", using: :btree

  create_table "instances", force: true do |t|
    t.datetime "instance_date"
    t.text     "note"
    t.text     "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "product_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
