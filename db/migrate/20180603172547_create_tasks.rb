class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :todo_lists do |t|
      t.string :title
      t.text :description
    end
  end
end
