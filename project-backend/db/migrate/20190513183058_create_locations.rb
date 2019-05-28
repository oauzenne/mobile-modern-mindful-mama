class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :where
      t.string :photo

      t.timestamps
    end
  end
end
