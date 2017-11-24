class RenameAdresseColumns < ActiveRecord::Migration[5.1]
  def change
    rename_column :adresses, :no_civique, :civic_number
    rename_column :adresses, :rue, :street
    rename_column :adresses, :ville, :city
    rename_column :adresses, :code_postal, :postcode
  end
end
