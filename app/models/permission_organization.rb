class PermissionOrganization < ActiveRecord::Base
  belongs_to :permission
  belongs_to :organization
end
