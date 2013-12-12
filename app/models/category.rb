class Category < ActiveRecord::Base
  attr_accessible :name, :allow_multiple
  has_many :permissions

  after_initialize :default_values

  private

  def default_values
     allow_multiple ||= true
  end


end
