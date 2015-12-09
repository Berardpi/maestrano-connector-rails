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

ActiveRecord::Schema.define(version: 20151209134449) do

  create_table "maestrano_connector_rails_id_maps", force: :cascade do |t|
    t.string   "connec_id"
    t.string   "connec_entity"
    t.string   "external_id"
    t.string   "external_entity"
    t.integer  "organization_id"
    t.datetime "last_push_to_connec"
    t.datetime "last_push_to_external"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "maestrano_connector_rails_id_maps", ["connec_id", "connec_entity", "organization_id"], name: "idmap_connec_index"
  add_index "maestrano_connector_rails_id_maps", ["external_id", "external_entity", "organization_id"], name: "idmap_external_index"
  add_index "maestrano_connector_rails_id_maps", ["organization_id"], name: "idmap_organization_index"

  create_table "maestrano_connector_rails_organizations", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "tenant"
    t.string   "oauth_provider"
    t.string   "oauth_uid"
    t.string   "oauth_token"
    t.string   "refresh_token"
    t.string   "instance_url"
    t.string   "synchronized_entities"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  add_index "maestrano_connector_rails_organizations", ["uid", "tenant"], name: "orga_uid_index"

  create_table "maestrano_connector_rails_synchronizations", force: :cascade do |t|
    t.integer  "organization_id"
    t.string   "status"
    t.text     "message"
    t.boolean  "partial",         default: false
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "maestrano_connector_rails_synchronizations", ["organization_id"], name: "synchronization_orga_id_index"

  create_table "maestrano_connector_rails_user_organization_rels", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "organization_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "maestrano_connector_rails_user_organization_rels", ["organization_id"], name: "rels_orga_index"
  add_index "maestrano_connector_rails_user_organization_rels", ["user_id"], name: "rels_user_index"

  create_table "maestrano_connector_rails_users", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "tenant"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "maestrano_connector_rails_users", ["uid", "tenant"], name: "user_uid_index"

end
