class CreateOrganismes < ActiveRecord::Migration[5.1]
  def change
    create_table :organismes do |t|
      t.string :nom
      t.string :couriel
      t.string :site_web

      t.timestamps
    end
  end
end
