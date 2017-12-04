class AddRfidToRasp < ActiveRecord::Migration[5.1]
  def change
    add_column :rasps, :jet_rfid, :string
  end
end
