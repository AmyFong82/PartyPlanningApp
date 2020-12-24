class CreateDrinks < ActiveRecord::Migration[6.0]
  def change
    create_table :drinks do |t|
      t.string :name
      t.integer :party_id
      t.integer :vote_id

      t.timestamps
    end
  end
end
