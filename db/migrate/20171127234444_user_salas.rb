class UserSalas < ActiveRecord::Migration[5.1]
  def change
    create_table :user_salas, id: false do |t|
      t.belongs_to :alunno,index: true
      t.belongs_to :sala, index: true
    end
  end
end
