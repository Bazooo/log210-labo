class AddUserProfileIdToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :user, :user_profile_id, :integer
  end
end
