class CreateServicepoint < ActiveRecord::Migration[5.1]
  def change
    create_table :servicepoints do |t|
        t.string :name
        t.string :address
        t.string :phone
        t.string :email
        t.string :fax
    end

    add_reference :servicepoints, :organisms, index: true
    rename_column :servicepoints, :organisms_id, :organism_id
  end
end
