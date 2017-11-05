class CreateAlunos < ActiveRecord::Migration[5.1]
  def change
    create_table :alunos do |t|
      t.string :name
      t.string :email
      t.references :user, foreign_key: true
      t.text :notes
      t.integer :status

      t.timestamps
    end
  end
end
