class AddUserIdToDataset < ActiveRecord::Migration
  def change
    add_column :datasets, :user_id, :integer
  end
end
