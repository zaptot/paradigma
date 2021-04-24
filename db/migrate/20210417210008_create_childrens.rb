class CreateChildrens < ActiveRecord::Migration[6.1]
  def change
    create_table :childrens do |t|
      t.string :name
      t.string :surname
      t.string :form
      t.string :address
      t.date :date_of_birth
    end
  end
end
