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
    inside = false
    if y <= top && y >= bottom
      if x <= right && x >= left
        inside = true
      end
    end
    inside
  end

end
