class ReferentSearch < ApplicationRecord
  def referents
    @referents ||= find_referents
  end

  private

  def find_referents
    referents = Referent.all
    referents = referents.where("surname like ?", surname) if surname.present?
    referents = referents.where('"familyName" like ?', familyName) if familyName.present?
    referents = referents.where("title = ?", title) if title.present?
    referents = referents.where("telephone = ?", telephone) if telephone.present?
    referents
  end
end
