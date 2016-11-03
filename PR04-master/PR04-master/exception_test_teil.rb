require 'test/unit'
require_relative 'teil.rb'


class ExceptionTestTeilDeque < Test::Unit::TestCase
  
  def setup
    @wrong_designation = Teil.new("panel", 19.5, [])
    @wrong_weight = Teil.new("glass panel", "19.5", [])  
  end
  def test_exceptions
    assert_nothing_raised ArgumentError do @wrong_designation end
    assert_nothing_raised ArgumentError do @wrong_weight end
  end
end