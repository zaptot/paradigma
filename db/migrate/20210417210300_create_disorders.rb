class CreateDisorders < ActiveRecord::Migration[6.1]
  def change
    create_table :disorders do |t|
      t.string :title
    end
  end
end
