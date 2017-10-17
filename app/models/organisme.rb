class Organisme < ApplicationRecord
    has_one :adresse
    has_one :telephone
    accepts_nested_attributes_for(:adresse, :allow_destroy => true)
    accepts_nested_attributes_for(:telephone, :allow_destroy => true)
end
