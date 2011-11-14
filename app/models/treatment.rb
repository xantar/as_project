class Treatment < ActiveRecord::Base
  attr_accessible :dragon_id, :treated_on, :medication_id, :user_id

  belongs_to :dragon
  belongs_to :medication

  belongs_to :user
end
