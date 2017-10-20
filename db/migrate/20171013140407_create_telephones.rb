class CreateTelephones < ActiveRecord::Migration[5.1]
  def change
    create_table :telephones do |t|
      t.string :bureau
      t.string :telecopie

      t.timestamps
    end
  end
end
