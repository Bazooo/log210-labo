class Rollback < ActiveRecord::Migration[5.1]
  def change

    remove_reference :organismes, :adresses, foreign_key: true
    remove_reference :organismes, :telephones, foreign_key: true

    add_reference :adresses, :organismes, index: true
    add_reference :telephones, :organismes, index: true

  end
end
