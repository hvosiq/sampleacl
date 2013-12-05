class Permission < ActiveRecord::Base
  attr_accessible :name

  belongs_to :category
  belongs_to :service

  validates_presence_of :category, message: "Permission must have a category"
end
