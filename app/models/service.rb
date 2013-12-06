class Service < ActiveRecord::Base
  attr_accessible :name, :permission_ids , :permissions

  has_and_belongs_to_many :permissions
end
