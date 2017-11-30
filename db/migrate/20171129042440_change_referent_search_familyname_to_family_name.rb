class ChangeReferentSearchFamilynameToFamilyName < ActiveRecord::Migration[5.1]
  def change
    rename_column :referent_searches, :familyname, :familyName
  end
end
