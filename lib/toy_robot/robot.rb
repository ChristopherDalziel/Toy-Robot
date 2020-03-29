module ToyRobot
  class Robot
    # This allows us to remove the position method below, it does the exact same thing, allows us to read the property.
    attr_reader :position

    def initialize(position = 0)
      @position = position
    end

    def move_east
      # Each time move_east is called move the position 1 to the right
      @position += 1
    end

    def move_west
      # Eat time move_west is called move the position 1 to the left
      @position -= 1
    end

    # def position
    #   # Return the value of position
    #   @position
    # end

  end
end