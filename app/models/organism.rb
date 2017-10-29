class Organism < ApplicationRecord
    has_one :user


    validates :name, :presence =>true, :allow_blank => false
    validates :address, :presence =>true, :allow_blank => false
    validates :phone, :presence =>true, :allow_blank => false
    validates :email, :presence =>true, :allow_blank => false
end
