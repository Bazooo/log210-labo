class Organisme < ApplicationRecord
    has_one :adresse
    has_one :telephone

    validates :adresse, :presence => true
    validates :telephone, :presence => true
end
