class Organization < ActiveRecord::Base
  attr_accessible :name, :developer_ids,:developers, :permission_ids, :permissions, :restriction_ids, :restrictions

  has_many :developers
  has_and_belongs_to_many :permissions
  has_and_belongs_to_many :restrictions


  def cumulative_permissions
    permissions
  end

  def categories
    Permission.categories(cumulative_permissions)
  end
end
