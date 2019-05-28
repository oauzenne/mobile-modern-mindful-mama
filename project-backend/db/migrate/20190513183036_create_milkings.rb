class CreateMilkings < ActiveRecord::Migration[5.2]
  def change
    create_table :milkings do |t|
      t.string :date
      t.string :time
      t.string :ounces
      t.belongs_to :mother


      t.timestamps
    end
  end
end
