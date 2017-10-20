class RenameIdColumns < ActiveRecord::Migration[5.1]
  def change
    remove_column :organismes, :organismes_id

    rename_column :adresses, :organismes_id, :organisme_id
    rename_column :telephones, :organismes_id, :organisme_id
  end
end
