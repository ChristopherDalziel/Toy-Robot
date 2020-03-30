module ToyRobot
  class Robot
    # This allows us to remove the position method below, it does the exact same thing, allows us to read the property.
    attr_reader :east, :north

    def initialize(east = 0, north = 0, direction = "NORTH")
      @east = east
      @north = north
      @direction = direction
    end

    def move_east
      # Each time we move_east we move the Robot 1 space to the left
      @east += 1
    end

    def move_west
      # Each time we move_west we move the Robot 1 space to the right
      @east -= 1
    end

    def move_north
      @north += 1
    end

    def move_south
      @north -= 1
    end

    def move
      case @direction
      when "NORTH" then move_north
      when "SOUTH" then move_south
      when "EAST" then move_east
      when "WEST" then move_west
      end
    end

    # def position
    #   # Return the value of position
    #   @position
    # end

  end
end