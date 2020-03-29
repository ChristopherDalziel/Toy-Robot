module ToyRobot
  class Robot
    # This allows us to remove the position method below, it does the exact same thing, allows us to read the property.
    attr_reader :position

    def initialize(position = 0)
      @position = position
    end

    def move_east
      # Each time move is called, add 1 to the position
      @position += 1
    end

    def move_west
      @position -= 1
    end

    # def position
    #   # Return the value of position
    #   @position
    # end

  end
end