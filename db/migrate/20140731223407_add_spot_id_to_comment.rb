class AddSpotIdToComment < ActiveRecord::Migration
  def change
    add_column :comments, :spot_id, :integer
  end
end
