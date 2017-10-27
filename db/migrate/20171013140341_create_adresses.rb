class CreateAdresses < ActiveRecord::Migration[5.1]
  def change
    create_table :adresses do |t|
      t.string :no_civique
      t.string :rue
      t.string :ville
      t.string :province
      t.string :code_postal

      t.timestamps
    end
  end
end
