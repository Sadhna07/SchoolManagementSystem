class CreateExamInfos < ActiveRecord::Migration
  def change
    create_table :exam_infos do |t|
      t.integer :exam_id
      t.string :exam_name
      t.integer :class_id

      t.timestamps null: false
    end
  end
end
