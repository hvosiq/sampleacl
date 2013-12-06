class Service < ActiveRecord::Base
  attr_accessible :name, :permission_ids , :permissions

  has_and_belongs_to_many :permissions

  def available_for? entity
    entity_categories = Permission.categories(entity.cumulative_permissions)
    num_of_categories_to_match = Permission.categories(permissions).size

    categories_matched = []
    entity.cumulative_permissions.each do |x|
      categories_matched << x.category if permissions.include? x
    end

    num_of_categories_to_match == categories_matched.uniq.size
  end

  def self.services_for entity
    Service.select {|x|x.available_for?entity}
  end

  def to_s
    name
  end

  def inspect
    to_s
  end
end
