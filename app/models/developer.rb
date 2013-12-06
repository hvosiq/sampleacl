class Developer < ActiveRecord::Base
  attr_accessible :name, :organization_id, :organization, :permission_ids, :permissions

  belongs_to :organization
  has_many :permission_developers
  has_many :permissions, through: :permission_developers


  def cumulative_permissions
    cumulative_permissions = []
    cumulative_permissions.concat permissions
    cumulative_permissions.concat organization.cumulative_permissions

    return cumulative_permissions.uniq

  end
end
