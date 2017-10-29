class Reforganism < ApplicationRecord
    has_one :address
    has_one :telephone

    accepts_nested_attributes_for(:address, :allow_destroy => true)
    accepts_nested_attributes_for(:telephone, :allow_destroy => true)

    validates :name, :presence =>true, :allow_blank => false
    validates :email, :presence =>true, :allow_blank => false
end