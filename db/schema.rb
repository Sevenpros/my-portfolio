# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_221_217_134_950) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'comments', force: :cascade do |t|
    t.string 'username'
    t.text 'content'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'project_id', null: false
    t.index ['project_id'], name: 'index_comments_on_project_id'
  end

  create_table 'likes', force: :cascade do |t|
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.bigint 'project_id', null: false
    t.index ['project_id'], name: 'index_likes_on_project_id'
  end

  create_table 'projects', force: :cascade do |t|
    t.string 'name'
    t.text 'description'
    t.text 'technologies'
    t.text 'image'
    t.integer 'likes_counter'
    t.integer 'comments_counter'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.text 'source_code_url'
    t.text 'demo_url'
  end

  add_foreign_key 'comments', 'projects'
  add_foreign_key 'likes', 'projects'
end
