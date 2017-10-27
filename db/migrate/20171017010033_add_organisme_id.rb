class AddOrganismeId < ActiveRecord::Migration[5.1]
  def change
    add_column :organismes, :organismes_id, :bigint
  end
end
