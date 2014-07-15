class AddAndRemoveColumnToSpots < ActiveRecord::Migration
  def change
    add_column :spots, :address_1, :string
    add_column :spots, :address_2, :string
    remove_column :spots, :building_number
    remove_column :spots, :street
  end
end
