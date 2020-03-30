module ToyRobot
  class Robot
    DIRECTIONS = [ "NORTH", "EAST", "SOUTH", "WEST" ]
    # This allows us to remove the position method below, it does the exact same thing, allows us to read the property.
    attr_reader :east, :north, :direction

    def initialize(east = 0, north = 0, direction = "NORTH")
      @east = east
      @north = north
      @direction = direction
    end

    # 'This code was replaced by attr_reader':
    # def position
    #   # Return the value of position
    #   @position
    # end

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
      send("move_#{@direction.downcase}")
    end

    # 'This code was replaced by the new move method, this code is easier to read, however the metaprogramming version is a lot cleaner': 
    # def move
    #   case @direction
    #   when "NORTH" then move_north
    #   when "SOUTH" then move_south
    #   when "EAST" then move_east
    #   when "WEST" then move_west
    #   end
    # end

    def turn_left
      @direction = DIRECTIONS[DIRECTIONS.index(@direction) -1]
    end

    # 'This code was replaced by the new turn_left method, that uses an array which we move through. Although the new code is harder to read, it's better to have directions which are not hard-coded'
    # def turn_left
    #   @direction = case @direction
    #   when "NORTH" then "WEST"
    #   when "SOUTH" then "EAST"
    #   when "EAST" then "NORTH"
    #   when "WEST" then "SOUTH"
    #   end
    # end

    def turn_right
      index = DIRECTIONS.index(@direction)
      @direction = DIRECTIONS.rotate(1)[index]
    end

  end
end