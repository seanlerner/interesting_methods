require "test_helper"

class InterestingMethodsTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::InterestingMethods::VERSION
  end

  def test_it_does_something_useful
    assert false
  end
end
