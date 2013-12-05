class Organization < ActiveRecord::Base
  attr_accessible :name

  has_many :developers
  has_many :permissions, through: :permission_organizations

end
