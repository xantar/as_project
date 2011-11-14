class Medication < ActiveRecord::Base
  attr_accessible :name, :description, :usage

  has_many :treatments
end
