class PermissionService < ActiveRecord::Base
  belongs_to :permission
  belongs_to :service
end
