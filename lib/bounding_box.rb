class BoundingBox
  attr_reader :width, :height
  def initialize(bottom_left_x, bottom_left_y, width, height)
    @bottom_left_x = bottom_left_x
    @bottom_left_y = bottom_left_y
    @width = width
    @height = height
  end

  def left
    @bottom_left_x
  end

  def right
    @bottom_left_x + @width
  end

  def bottom
    @bottom_left_y
  end

  def top
    @bottom_left_y + @height
  end

  def contains_point?(x,y)
    if y <= top && y >= bottom
      if x <= right && x >= left
        true
      end
    else
      false
    end
  end

end

test_box = BoundingBox.new(5.0, 10.0, 25.0, 50.0)
puts test_box.contains_point?(0.0, 0.0)
