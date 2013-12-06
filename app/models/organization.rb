class Organization < ActiveRecord::Base
  attr_accessible :name, :developer_ids,:developers, :permission_ids, :permissions

  has_many :developers
  has_many :permission_organizations
  has_many :permissions, through: :permission_organizations


  def cumulative_permissions
    permissions
  end
end
