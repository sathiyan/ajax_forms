class Band < ActiveRecord::Base
  attr_accessible :name

  validates :name, :uniqueness => true, :presence => true
end
