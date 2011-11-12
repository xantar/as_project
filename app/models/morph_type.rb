class MorphType < ActiveRecord::Base
  attr_accessible :name

  has_many :morphs
end
