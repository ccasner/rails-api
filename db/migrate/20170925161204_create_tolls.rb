class CreateTolls < ActiveRecord::Migration[5.1]
  def change
    create_table :tolls do |t|
      t.string :location
      t.float :price

      t.timestamps
    end
  end
end
