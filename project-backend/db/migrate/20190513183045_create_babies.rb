class CreateBabies < ActiveRecord::Migration[5.2]
  def change
    create_table :babies do |t|
      t.string :name
      t.string :photo
      t.belongs_to :mother
      
      t.timestamps
    end
  end
end
