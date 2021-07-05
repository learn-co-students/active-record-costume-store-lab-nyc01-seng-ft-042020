class CreateCostumeInventory < ActiveRecord::Migration[6.0]
  def change
    rename_column :costume_stores, :number_of_costumes, :costume_inventory
  end
end
