class CreateCharges < ActiveRecord::Migration[5.1]
  def change
    create_table :charges do |t|
      t.string :location
      t.float :price
      t.date :date

      t.timestamps
    end
  end
end
