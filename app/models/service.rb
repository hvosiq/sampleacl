class Service < ActiveRecord::Base
  attr_accessible :name, :permission_ids , :permissions

  has_many :permission_services
  has_many :permissions, through: :permission_services
end
