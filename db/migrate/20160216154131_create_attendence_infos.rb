class CreateAttendenceInfos < ActiveRecord::Migration
  def change
    create_table :attendence_infos do |t|
      t.integer :student_id
      t.string :class_id
      t.string :status
      t.date :record_date

      t.timestamps null: false
    end
  end
end
