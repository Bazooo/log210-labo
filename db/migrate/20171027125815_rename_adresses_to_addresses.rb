class RenameAdressesToAddresses < ActiveRecord::Migration[5.1]
  def change
    rename_table :adresses, :addresses
  end
end
