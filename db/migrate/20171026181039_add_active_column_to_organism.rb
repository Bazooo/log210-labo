class AddActiveColumnToOrganism < ActiveRecord::Migration[5.1]
    def change
    add_column :organismes, :active, :boolean, :default => true
  end
end
