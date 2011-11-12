require 'test_helper'

class WeightTypeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert WeightType.new.valid?
  end
end
