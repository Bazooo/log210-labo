class AddRelationAdressTelephone < ActiveRecord::Migration[5.1]
  def change
    add_reference :adresses, :organismes, foreign_key: true
    add_reference :telephones, :organismes, foreign_key: true
  end
end
