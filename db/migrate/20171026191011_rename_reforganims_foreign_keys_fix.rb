class RenameReforganimsForeignKeysFix < ActiveRecord::Migration[5.1]
  def change
    rename_column :adresses, :reforganisme_id, :reforganism_id
    rename_column :telephones, :reforganisme_id, :reforganism_id
  end
end
