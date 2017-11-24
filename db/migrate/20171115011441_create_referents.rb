class CreateReferents < ActiveRecord::Migration[5.1]
  def change
    create_table :referents do |t|
      t.string :familyName
      t.string :surname
      t.string :title
      t.string :telephone
      t.string :cellphone
      t.string :fax
      t.string :email
      t.integer :preference

      t.timestamps
    end
  end
end
