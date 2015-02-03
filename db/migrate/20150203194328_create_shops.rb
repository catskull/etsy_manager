class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.integer :external_id
      t.string :url

      t.timestamps
    end
  end
end
