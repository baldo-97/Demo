class CreateTasks < ActiveRecord::Migration[5.0]

  def up
    create_table :tasks do |t|
      t.string "task_title", :null => false, :limit => 50
      t.text "task_title", :null => false
      t.timestamps
    end
  end

  def down
    drop_table :tasks
  end


end
