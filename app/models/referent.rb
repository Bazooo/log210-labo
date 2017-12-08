class Referent < ApplicationRecord
  enum preference:[ :fax, :email, :paper ]

  has_many :ReforganismReferents
  has_many :reforganisms, through: :ReforganismReferents

  validates :familyName, :presence =>true, :allow_blank => false
  validates :email, :presence =>true, :allow_blank => false
end
