class Developer < ActiveRecord::Base
  attr_accessible :name, :organization_id, :organization, :permission_ids, :permissions, :restrictions, :restriction_ids

  belongs_to :organization
  has_and_belongs_to_many :permissions
  has_and_belongs_to_many :restrictions


  def cumulative_permissions
    cumulative_permissions = []
    cumulative_permissions.concat permissions
    cumulative_permissions.concat organization.cumulative_permissions

    return cumulative_permissions.uniq.select{|per| !restriction_ids.include?per.id }

  end

end
