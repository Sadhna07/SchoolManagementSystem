class CreateResultInfos < ActiveRecord::Migration
  def change
    create_table :result_infos do |t|
      t.integer :student_id
      t.integer :exam_id
      t.integer :subject_id
      t.integer :marks_obtained

      t.timestamps null: false
    end
  end
end
