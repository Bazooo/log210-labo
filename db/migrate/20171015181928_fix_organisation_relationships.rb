class FixOrganisationRelationships < ActiveRecord::Migration[5.1]
  def change

    remove_reference :adresses, :organismes, index: true
    remove_reference :telephones, :organismes, index: true

    add_reference :organismes, :adresses, foreign_key: true
    add_reference :organismes, :telephones, foreign_key: true

  end
end
