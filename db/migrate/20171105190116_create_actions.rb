class CreateActions < ActiveRecord::Migration[5.1]
  def change
    create_table :actions do |t|
      t.references :aluno, foreign_key: true
      t.date :sala_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
