require 'test_helper'

class InterestingMethodsTest < Minitest::Test

  def test_that_it_has_a_version_number
    refute_nil ::InterestingMethods::VERSION
  end

  def test_class
    expected = [
      :all,
      :report,
      :x,
      :y,
      :z
    ]
    assert_equal expected, Animal.im
  end

  def test_instance
    expected = [
      :a,
      :b,
      :c,
      :sound,
      :speak,
      :speak_loudly,
      :type
    ]
    assert_equal expected, Animal.new('cow', 'moo').im
  end

  def test_inherited_class
    expected = [
      :all,
      :report,
      :three_little_pigs,
      :x,
      :y,
      :z
    ]
    assert_equal expected, Pig.im
  end

  def test_inherited_instance
    expected = [
      :a,
      :b,
      :c,
      :roll_around_in_mud,
      :sound,
      :speak,
      :speak_loudly,
      :type
    ]
    assert_equal expected, Pig.new('pig', 'oink').im
  end

  def test_extended_class
    expected = [
      :all,
      :instance_blue,
      :instance_green,
      :instance_red,
      :report,
      :three_little_pigs,
      :x,
      :y,
      :z
    ]
    assert_equal expected, PigWithColoursExtended.im
  end

  def test_included_class
    expected = [
      :a,
      :b,
      :c,
      :instance_blue,
      :instance_green,
      :instance_red,
      :roll_around_in_mud,
      :sound,
      :speak,
      :speak_loudly,
      :type
    ]
    assert_equal expected, PigWithColoursIncluded.new('pig', 'oink').im
  end

  def test_module
    expected = [
      :class_blue,
      :class_green,
      :class_red,
      :instance_blue,
      :instance_green,
      :instance_red
    ]
    assert_equal expected, Colours.im
  end

end
