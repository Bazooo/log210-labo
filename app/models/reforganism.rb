class Reforganism < ApplicationRecord
    has_one :address
    has_one :telephone

    has_many :ReforganismReferents
    has_many :referents, through: :ReforganismReferents

    accepts_nested_attributes_for(:address, :allow_destroy => true)
    accepts_nested_attributes_for(:telephone, :allow_destroy => true)

    validates :name, :presence =>true, :allow_blank => false
    validates :email, :presence =>true, :allow_blank => false
end
