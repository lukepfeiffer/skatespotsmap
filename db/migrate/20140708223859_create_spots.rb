class CreateSpots < ActiveRecord::Migration
  def change
    create_table :spots do |t|
      t.text :additional_info
      t.string :city
      t.string :state
      t.string :street
      t.string :description
      t.integer :zip_code
      t.integer :building_number
    end
  end
end
