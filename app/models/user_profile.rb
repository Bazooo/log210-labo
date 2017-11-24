class UserProfile < ApplicationRecord
    belongs_to :user
    has_one :user_phone, :dependent => :destroy
    has_many :diploma, :dependent => :destroy

    accepts_nested_attributes_for :user_phone, :allow_destroy => true
    accepts_nested_attributes_for :diploma, :allow_destroy => true

    validates :first_name, :presence =>true, :allow_blank => false
    validates :last_name, :presence =>true, :allow_blank => false
    validates :address, :presence =>true, :allow_blank => false
    validates :organism_role, :presence =>true, :allow_blank => false
end
