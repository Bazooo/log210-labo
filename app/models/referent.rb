class Referent < ApplicationRecord
  enum preference:[ :fax, :email, :paper ]

  has_many :ReforganismReferents
  has_many :reforganisms, through: :ReforganismReferents
end
