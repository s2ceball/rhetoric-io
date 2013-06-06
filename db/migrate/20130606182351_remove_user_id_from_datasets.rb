class RemoveUserIdFromDatasets < ActiveRecord::Migration
  def up
    remove_column :datasets, :user_id
  end

  def down
    add_column :datasets, :user_id, :integer
  end
end
