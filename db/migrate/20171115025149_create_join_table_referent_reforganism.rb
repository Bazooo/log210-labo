class CreateJoinTableReferentReforganism < ActiveRecord::Migration[5.1]
  def change
    create_join_table :referents, :reforganisms do |t|
      t.index [:referent_id, :reforganism_id]
      # t.index [:reforganism_id, :referent_id]
    end
  end
end
