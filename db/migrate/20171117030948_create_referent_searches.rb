class CreateReferentSearches < ActiveRecord::Migration[5.1]
  def change
    create_table :referent_searches do |t|
      t.string :familyname
      t.string :surname
      t.string :nameRefOrganism
      t.string :title
      t.string :telephone

      t.timestamps
    end
  end
end
