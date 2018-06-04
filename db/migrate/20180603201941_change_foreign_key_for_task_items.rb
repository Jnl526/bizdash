class ChangeForeignKeyForTaskItems < ActiveRecord::Migration[5.2]
  def change
    rename_column :task_items, :task_id, :task_list_id
  end
end
