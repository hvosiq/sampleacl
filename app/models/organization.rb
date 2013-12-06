class Organization < ActiveRecord::Base
  attr_accessible :name, :developer_ids,:developers, :permission_ids, :permissions

  has_many :developers
  has_and_belongs_to_many :permissions


  def cumulative_permissions
    permissions
  end
end
