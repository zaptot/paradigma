class CreateChildrenDisorders < ActiveRecord::Migration[6.1]
  def change
    create_table :children_disorders do |t|
      t.references :childrens
      t.references :disorders
      t.date :date
    end
  end
end
