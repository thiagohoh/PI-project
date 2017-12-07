class CreateJoinTableAlunoSala < ActiveRecord::Migration[5.1]
  def change
    create_join_table :alunos, :salas do |t|
      # t.index [:aluno_id, :sala_id]
      # t.index [:sala_id, :aluno_id]
    end
  end
end
