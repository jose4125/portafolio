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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130616171150) do

  create_table "acces", :force => true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "acces", ["name"], :name => "index_acces_on_name", :unique => true

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "imagen"
    t.string   "desc_corta"
    t.string   "url"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
  end

  create_table "projects_skills", :id => false, :force => true do |t|
    t.integer "skill_id"
    t.integer "project_id"
  end

  create_table "proyectos", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.string   "imagen"
    t.string   "string"
    t.string   "des_corta"
    t.string   "url"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "skills", :force => true do |t|
    t.string   "name"
    t.integer  "percent"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.text     "descriptin"
    t.string   "ocupacion"
    t.string   "image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "mail"
    t.string   "github"
    t.string   "linkedin"
    t.string   "celular"
  end

end
