class CreateUserPhones < ActiveRecord::Migration[5.1]
  def change
    create_table :user_phones do |t|
      t.string :cell_number
      t.string :home_number
      t.string :work_number

      t.timestamps
    end
  end
end
