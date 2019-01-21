class RenameShipTypeToShipCategoryInShips < ActiveRecord::Migration[5.2]
  def change
    rename_column :ships, :ship_type, :category
  end
end
