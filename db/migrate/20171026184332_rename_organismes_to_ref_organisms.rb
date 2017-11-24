class RenameOrganismesToRefOrganisms < ActiveRecord::Migration[5.1]
  def change
    rename_table :organismes, :reforganisms
  end
end
