class CreateDiplomas < ActiveRecord::Migration[5.1]
  def change
    create_table :diplomas do |t|
      t.string :program_name
      t.string :institution_name
      t.string :address
      t.datetime :date_start
      t.datetime :date_end

      t.timestamps
    end
  end
end
