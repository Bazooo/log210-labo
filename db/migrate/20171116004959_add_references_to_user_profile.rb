class AddReferencesToUserProfile < ActiveRecord::Migration[5.1]
  def change
      add_reference :user_profiles, :diploma, foreign_key: true
      add_reference :user_profiles, :user_phone, foreign_key: true
  end
end
