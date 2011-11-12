require 'test_helper'

class MorphTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Morph.new.valid?
  end
end
