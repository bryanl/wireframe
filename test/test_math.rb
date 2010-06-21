require 'helper'

class TestMath < Test::Unit::TestCase

  test "create the length and width from a coordinate" do
    math = Wireframe::Math.new "50+10"
    assert_equal 10, math.height
    assert_equal 50, math.width
  end
  
end

