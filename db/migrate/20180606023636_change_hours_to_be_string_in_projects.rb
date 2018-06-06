class ChangeHoursToBeStringInProjects < ActiveRecord::Migration[5.2]
  def change
    change_column :projects, :hours, :string
  end
end
