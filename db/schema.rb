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

ActiveRecord::Schema.define(version: 20160221171744) do

  create_table "insurance_certificates", force: true do |t|
    t.integer  "form_number"
    t.string   "insuror"
    t.integer  "occurrence_limit"
    t.integer  "aggregate_limit"
    t.string   "named_insured"
    t.date     "policy_start_date"
    t.date     "policy_end_date"
    t.string   "certificate_holder"
    t.string   "additional_insured"
    t.integer  "number_of_certificates_issued"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "settle_agrees", force: true do |t|
    t.string   "plaintiff"
    t.string   "defendant"
    t.integer  "settle_amount"
    t.date     "pay_date"
    t.string   "court"
    t.boolean  "confidential"
    t.string   "choice_of_law"
    t.string   "signature_block"
    t.string   "case_type"
    t.string   "notice_to"
    t.string   "indemnity"
    t.boolean  "required"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "intro"
    t.text     "intro_text"
  end

end
