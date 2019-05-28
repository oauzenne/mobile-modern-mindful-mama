class CreateCommonProbs < ActiveRecord::Migration[5.2]
  def change
    create_table :common_probs do |t|
      t.string :problem
      t.string :fix
      
      t.timestamps
    end
  end
end
