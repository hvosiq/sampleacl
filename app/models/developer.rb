class Developer < ActiveRecord::Base
  attr_accessible :name, :organization_id, :permission_ids

  belongs_to :organization
  has_many :permission_developers
  has_many :permissions, through: :permission_developers
end
