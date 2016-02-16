class CreateSubjectInfos < ActiveRecord::Migration
  def change
    create_table :subject_infos do |t|
      t.integer :subject_id
      t.string :subject_name
      t.integer :exam_id
      t.integer :maximum_marks

      t.timestamps null: false
    end
  end
end
