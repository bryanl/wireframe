require 'helper'

class TestImage < Test::Unit::TestCase

  test "create an image given the proper coordinates" do
    image = Wireframe::Image.new("50+10").draw
    assert_not_nil image
  end

  test "should draw an image of the proper width" do
    image = Wireframe::Image.new("50+10").draw
    assert_equal 50, image_from_string(image).columns
  end

  test "should draw an image of the proper height" do
    image = Wireframe::Image.new("50+10").draw
    assert_equal 10, image_from_string(image).rows
  end

  private

  def image_from_string(string)
    Magick::Image.from_blob(string)[0]
  end

end
