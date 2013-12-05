class PermissionDeveloper < ActiveRecord::Base
  belongs_to :permission
  belongs_to :developer
end
