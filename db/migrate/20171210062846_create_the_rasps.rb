class CreateTheRasps < ActiveRecord::Migration[5.1]
  def change
    create_table :the_rasps do |t|
      t.integer :rfid
      t.string :name

      t.timestamps
    end
  end
end
