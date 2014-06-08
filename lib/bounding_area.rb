class BoundingArea
  def initialize(area)
    @area = area
  end

  def contains_point?(x,y)
    point_included = false
    @area.each do |box|
      if box.contains_point?(x,y)
        point_included = true
      end
    end
    point_included
  end

end
