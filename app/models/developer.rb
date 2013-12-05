class Developer < ActiveRecord::Base
  attr_accessible :name

  belongs_to :organization
  has_many :permissions, through: :permission_developers
end
