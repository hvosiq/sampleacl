class Restriction < ActiveRecord::Base
  attr_accessible :permission, :permission_id
  belongs_to :permission

  has_and_belongs_to_many :developers
  has_and_belongs_to_many :organizations

  def name
    permission.name
  end

  def category
    permission.category
  end

  def to_s
    "#{category.name} - #{name}"
  end

  def inspect
    to_s
  end
end
