class AddUserToSala < ActiveRecord::Migration[5.1]
  def change
    add_reference :salas, :user, foreign_key: true
  end
end
