class ReferentSearch < ApplicationRecord
  def referents
    @referents ||= find_referents
  end

  private

  def find_referents
    referents = Referent.order(:surname)
    referents = referents.where("surname like ?", surname) if surname.present?
    #referents = referents.where("surname like ?", params[:surname]) if surname.present?
    #referents = referents.where("nameRefOrganism = ?", params[:nameRefOrganism]) if nameRefOrganism.present?
    #referents = referents.where("title = ?", params[:title]) if title.present?
    #referents = referents.where("telephone = ?", params[:telephone]) if telephone.present?
    referents
  end
end
