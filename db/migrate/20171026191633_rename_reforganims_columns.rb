class RenameReforganimsColumns < ActiveRecord::Migration[5.1]
  def change
    rename_column :reforganisms, :nom, :name
    rename_column :reforganisms, :couriel, :email
    rename_column :reforganisms, :site_web, :website
  end
end
