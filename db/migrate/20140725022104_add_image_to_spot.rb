class AddImageToSpot < ActiveRecord::Migration
  def change
    add_column :spots, :filepicker_url, :string
  end
end
