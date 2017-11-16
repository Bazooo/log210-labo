class FixReferencesUserProfiles < ActiveRecord::Migration[5.1]
  def change
    remove_reference :users, :user_profile, foreign_key: true
    remove_reference :user_profiles, :diploma, foreign_key: true
    remove_reference :user_profiles, :user_phone, foreign_key: true

    add_reference :user_profiles, :user, foreign_key: true
    add_reference :diplomas, :user_profile, foreign_key: true
    add_reference :user_phones, :user_profile, foreign_key: true
  end
end
