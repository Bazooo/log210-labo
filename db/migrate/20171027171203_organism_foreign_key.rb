class OrganismForeignKey < ActiveRecord::Migration[5.1]
  def change
    rename_column :organisms, :users_id, :user_id
  end
end
