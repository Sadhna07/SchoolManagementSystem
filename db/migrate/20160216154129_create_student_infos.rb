class CreateStudentInfos < ActiveRecord::Migration
  def change
    create_table :student_infos do |t|
      t.integer :student_id
      t.string :student_name
      t.integer :referenced_class_id

      t.timestamps null: false
    end
  end
end
