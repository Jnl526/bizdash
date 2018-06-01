class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.integer :client_id
      t.string :name
      t.text :description
      t.integer :hours
      t.timestamps
    end
  end
end
