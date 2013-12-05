class Permission < ActiveRecord::Base
  attr_accessible :name , :category_id ,:category

  belongs_to :category
  has_many :permission_services
  has_many :services, through: :permission_services
  has_many :permission_organizations
  has_many :permission_developers
  has_many :developers, through: :permission_developers
  has_many :organizations, through: :permission_organizations

  validates_presence_of :category, message: "Permission must have a category"
end
