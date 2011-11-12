class WeightType < ActiveRecord::Base
  attr_accessible :name

  has_many :weights
end
