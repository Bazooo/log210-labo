class Adresse < ApplicationRecord
    belongs_to :organisme

    validates :no_civique, :presence =>true, :allow_blank => false
    validates :rue, :presence =>true, :allow_blank => false
    validates :ville, :presence =>true, :allow_blank => false
    validates :province, :presence =>true, :allow_blank => false
    validates :code_postal, :presence =>true, :allow_blank => false

    def should_validate?
        new_record? || organisme_id.present?
    end
end
