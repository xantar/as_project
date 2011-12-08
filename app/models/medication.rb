class Medication < ActiveRecord::Base
  attr_accessible :name, :description, :usage

  validates_presence_of :name

  has_many :treatments
end
