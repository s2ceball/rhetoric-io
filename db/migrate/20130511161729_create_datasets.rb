class CreateDatasets < ActiveRecord::Migration
  def change
    create_table :datasets do |t|
      t.string :title
      t.string :researchers
      t.string :url
      t.text :description
      t.text :purpose
      t.text :audience
      t.string :format
      t.string :location
      t.boolean :need_storage
      t.boolean :need_digitization
      t.boolean :complete
      t.string :date_range
      t.string :collection_rate
      t.boolean :interest
      t.string :email
      t.boolean :join_email_list

      t.timestamps
    end
  end
end
