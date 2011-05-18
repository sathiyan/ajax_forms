require 'test_helper'

class BandTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Band.new.valid?
  end
end
