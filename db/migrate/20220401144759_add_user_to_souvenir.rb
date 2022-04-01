class AddUserToSouvenir < ActiveRecord::Migration[7.0]
  def change
    add_reference :souvenirs, :user, null: true, foreign_key: true
  end
end
