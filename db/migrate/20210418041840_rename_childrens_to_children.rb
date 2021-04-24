class RenameChildrensToChildren < ActiveRecord::Migration[6.1]
  def change
    rename_table :childrens, :children
    rename_column :children_disorders, :childrens_id, :child_id
    rename_column :schedules, :childrens_id, :child_id
    rename_column :events, :childrens_id, :child_id

    rename_column :children_disorders, :disorders_id, :disorder_id
    rename_column :schedules, :employees_id, :employee_id
    rename_column :events, :employees_id, :employee_id
  end
end
