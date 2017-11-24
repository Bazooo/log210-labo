class RenameTelephoneColumns < ActiveRecord::Migration[5.1]
  def change
    rename_column :telephones, :bureau, :work
    rename_column :telephones, :telecopie, :fax
  end
end
