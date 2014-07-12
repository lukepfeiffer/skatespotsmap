class AddTimestampsToSpot < ActiveRecord::Migration
  def change
    add_column :spots, :created_at, :timestamp
  end
end
