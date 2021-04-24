class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.references :childrens
      t.references :employees
      t.string :days
      t.string :time
      t.string :form
    end
  end
end
