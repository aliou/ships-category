class CreateShips < ActiveRecord::Migration[5.2]
  def change
    create_table :ships do |t|
      t.string :name, null: false
      t.string :ship_type, null: false
      t.timestamps
    end
  end
end
