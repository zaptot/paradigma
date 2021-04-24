class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.references :childrens
      t.references :employees
      t.string :event
      t.date :date
    end
  end
end
