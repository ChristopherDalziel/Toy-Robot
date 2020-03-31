module ToyRobot
  class Table
    def initialize(width, length)
      @width = width
      @length = length
    end

    # Logic: 
    # Less than 0 = invalid
    # More than or equal to c5 = invalid
    def valid_location?(east, north)
      # This logic determines the width and length of our table
      # east >= 0 && east < @width && north >= 0 && north < @length

      # A cleaner way to determine our logic, the spread operator will exclude the value at the end of the range. In our case this is 0-4 (Removing 5). 
      (0...@width).cover?(east) && (0...@length).cover?(north)
    end

  end
end