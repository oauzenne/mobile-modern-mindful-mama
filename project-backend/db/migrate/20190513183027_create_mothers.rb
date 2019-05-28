class CreateMothers < ActiveRecord::Migration[5.2]
  def change
    create_table :mothers do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :image
      t.string :baby_name
      t.string :baby_image
      t.string :baby_age

      t.timestamps
    end
  end
end
