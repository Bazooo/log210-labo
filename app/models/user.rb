class User < ApplicationRecord
  enum role:[ :directeur, :coordonateur, :assistant, :intervenant ]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable

  has_one :user_profile, :dependent => :destroy

  accepts_nested_attributes_for :user_profile, :allow_destroy => true
end
