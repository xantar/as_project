require 'test_helper'

class HatchTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Hatch.new.valid?
  end
end
