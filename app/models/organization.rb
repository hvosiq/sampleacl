class Organization < ActiveRecord::Base
  attr_accessible :name, :developer_ids, :permission_ids

  has_many :developers
  has_many :permission_organizations
  has_many :permissions, through: :permission_organizations

end
