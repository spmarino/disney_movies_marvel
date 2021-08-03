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

ActiveRecord::Schema.define(version: 20_210_802_202_059) do
  create_table 'characters', force: :cascade do |t|
    t.string 'name', null: false
    t.integer 'age'
    t.integer 'weight', null: false
    t.text 'history'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['name'], name: 'index_characters_on_name', unique: true
  end

  create_table 'genders', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'marvels', force: :cascade do |t|
    t.integer 'movie_id', null: false
    t.integer 'character_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['character_id'], name: 'index_marvels_on_character_id'
    t.index ['movie_id'], name: 'index_marvels_on_movie_id'
  end

  create_table 'movies', force: :cascade do |t|
    t.string 'title'
    t.date 'release_date'
    t.integer 'rating'
    t.integer 'gender_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['gender_id'], name: 'index_movies_on_gender_id'
  end

  create_table 'users', force: :cascade do |t|
    t.string 'provider', default: 'email', null: false
    t.string 'uid', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'name'
    t.string 'nickname'
    t.string 'email'
    t.text 'tokens'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index %w[uid provider], name: 'index_users_on_uid_and_provider', unique: true
  end

  add_foreign_key 'marvels', 'characters'
  add_foreign_key 'marvels', 'movies'
  add_foreign_key 'movies', 'genders'
end
