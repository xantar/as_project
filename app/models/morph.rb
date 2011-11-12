class Morph < ActiveRecord::Base
  attr_accessible :dragon_id, :morph_type, :user_id

  belongs_to :dragon
  belongs_to :morph_type

  belongs_to :user
end
