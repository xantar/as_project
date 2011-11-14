require 'test_helper'

class TreatmentTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Treatment.new.valid?
  end
end
