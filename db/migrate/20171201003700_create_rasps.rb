class CreateRasps < ActiveRecord::Migration[5.1]
  def change
    create_table :rasps do |t|
      t.integer :rasp_id
      t.integer :door_id_t

      t.timestamps
    end
  end
end
