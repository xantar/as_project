require 'test_helper'

class MorphTypeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert MorphType.new.valid?
  end
end
