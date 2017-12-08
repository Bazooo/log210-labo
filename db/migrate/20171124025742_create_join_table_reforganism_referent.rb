class CreateJoinTableReforganismReferent < ActiveRecord::Migration[5.1]
  def change

    drop_table :referents_reforganisms

    create_join_table :reforganisms, :referents do |t|
      t.index [:reforganism_id, :referent_id]
      t.index [:referent_id, :reforganism_id]
    end
  end
end
