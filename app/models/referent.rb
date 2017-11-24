class Referent < ApplicationRecord
  enum preference:[ :fax, :email, :paper ]

  has_and_belongs_to_many :reforganisms
end
