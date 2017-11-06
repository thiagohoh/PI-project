class AddPhotoToAluno < ActiveRecord::Migration[5.1]
  def change
    add_column :alunos, :photo, :string
  end
end
