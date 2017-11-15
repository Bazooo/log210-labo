class AddUserProfileIdToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :user_profile_id, :integer
  end
end
