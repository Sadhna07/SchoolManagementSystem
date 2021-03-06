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

ActiveRecord::Schema.define(version: 20160216154148) do

  create_table "attendence_infos", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "class_id"
    t.string   "status"
    t.date     "record_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "class_infos", force: :cascade do |t|
    t.integer  "class_id"
    t.string   "class_name"
    t.integer  "maximum_limit"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "exam_infos", force: :cascade do |t|
    t.integer  "exam_id"
    t.string   "exam_name"
    t.integer  "class_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "result_infos", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "exam_id"
    t.integer  "subject_id"
    t.integer  "marks_obtained"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "student_infos", force: :cascade do |t|
    t.integer  "student_id"
    t.string   "student_name"
    t.integer  "referenced_class_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "subject_infos", force: :cascade do |t|
    t.integer  "subject_id"
    t.string   "subject_name"
    t.integer  "exam_id"
    t.integer  "maximum_marks"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
