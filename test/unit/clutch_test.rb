require 'test_helper'

class ClutchTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Clutch.new.valid?
  end
end
