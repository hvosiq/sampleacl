class Permission < ActiveRecord::Base
  attr_accessible :name , :category_id ,:category

  belongs_to :category
  has_one :restriction,  :dependent => :destroy
  has_and_belongs_to_many :services
  has_and_belongs_to_many :developers
  has_and_belongs_to_many :organizations

  validates_presence_of :category, message: "Permission must have a category"

  def to_s
    "#{category.name} - #{name}"
  end

  def inspect
    to_s
  end

  def self.categories (param_permissions)
    categories = []
    param_permissions.each {|per| categories << per.category}
    categories.uniq
  end
end
