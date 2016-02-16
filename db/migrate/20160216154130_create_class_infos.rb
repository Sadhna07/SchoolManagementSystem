class CreateClassInfos < ActiveRecord::Migration
  def change
    create_table :class_infos do |t|
      t.integer :class_id
      t.string :class_name
      t.integer :maximum_limit

      t.timestamps null: false
    end
  end
end
