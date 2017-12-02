class Room < ApplicationRecord
    belongs_to :servicepoint

    validates :name, :presence =>true, :allow_blank => false
    validates :places, :presence =>true, :allow_blank => false
    validates :serviceType, :presence=>true, :allow_blank => false
end
