class Address < ApplicationRecord
    belongs_to :reforganism

    validates :civic_number, :presence =>true, :allow_blank => false
    validates :street, :presence =>true, :allow_blank => false
    validates :city, :presence =>true, :allow_blank => false
    validates :province, :presence =>true, :allow_blank => false
    validates :postcode, :presence =>true, :allow_blank => false

end
