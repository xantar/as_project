require 'test_helper'

class DragonTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Dragon.new.valid?
  end
end
