class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :nickname
      t.string :avatar
      t.string :email
      t.string :title
      t.string :institution

      t.timestamps
    end
  end
end
