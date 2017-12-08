class CreateOrganisms < ActiveRecord::Migration[5.1]
  def change
    create_table :organisms do |t|
        t.string :name
        t.string :address
        t.string :phone
        t.string :email
        t.string :fax
    end

    add_reference :organisms, :users, index: true
  end
end
