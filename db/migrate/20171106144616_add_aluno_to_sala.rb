class AddAlunoToSala < ActiveRecord::Migration[5.1]
  def change
    add_reference :salas, :aluno, foreign_key: true
  end
end
