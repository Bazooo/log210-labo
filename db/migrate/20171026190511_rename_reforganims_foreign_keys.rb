class RenameReforganimsForeignKeys < ActiveRecord::Migration[5.1]
  def change
    rename_column :adresses, :organisme_id, :reforganisme_id
    rename_column :telephones, :organisme_id, :reforganisme_id
  end
end
