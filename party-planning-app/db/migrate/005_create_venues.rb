class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.integer :location

      t.timestamps

    end
  end
end
