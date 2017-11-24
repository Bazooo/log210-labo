class AddReforganismRefToReferent < ActiveRecord::Migration[5.1]
  def change
    rename_table :referents_reforganisms, :reforganism_referents
    add_reference :reforganism_referents, :referents, foreign_key: true
    add_reference :reforganism_referents, :reforganisms, foreign_key: true
  end
end
