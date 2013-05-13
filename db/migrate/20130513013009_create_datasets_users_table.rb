class CreateDatasetsUsersTable < ActiveRecord::Migration
  def change
    create_table :datasets_users, id: false do |t|
      t.integer :dataset_id
      t.integer :user_id
    end
  end
end
