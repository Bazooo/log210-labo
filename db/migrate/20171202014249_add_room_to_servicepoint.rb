class AddRoomToServicepoint < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
        t.string :name
        t.bigint :places
        t.string :serviceType
    end

    add_reference :rooms, :servicepoints, index: true
    rename_column :rooms, :servicepoints_id, :servicepoint_id
  end
end
