class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :name
      t.datetime :start_time
      t.text :description

      t.timestamps
    end
  end
end
