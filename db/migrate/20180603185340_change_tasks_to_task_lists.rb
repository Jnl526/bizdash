class ChangeTasksToTaskLists < ActiveRecord::Migration[5.2]
  def change
    rename_table :tasks, :task_lists
  
  end
end
