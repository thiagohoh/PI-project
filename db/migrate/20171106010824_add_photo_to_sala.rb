class AddPhotoToSala < ActiveRecord::Migration[5.1]
  def change
    add_column :salas, :photo, :string
  end
end
