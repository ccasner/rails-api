class AddUserToCharges < ActiveRecord::Migration[5.1]
  def change
    add_reference :charges, :user, foreign_key: true
  end
end
