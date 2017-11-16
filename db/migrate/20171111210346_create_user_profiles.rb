class CreateUserProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :user_profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      # t.integer :user_phone_id
      # t.integer :diploma_id
      t.string :organism_role

      t.timestamps
    end
  end
end
