module ToyRobot
  class Robot
    # This allows us to remove the position method below, it does the exact same thing, allows us to read the property.
    attr_reader :east, :north

    def initialize(east = 0, north = 0)
      @east = east
      @north = north
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

    # def position
    #   # Return the value of position
    #   @position
    # end

  end
end