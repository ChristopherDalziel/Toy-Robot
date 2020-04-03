module ToyRobot
  class Simulator
    attr_reader :robot

    def initialize(table)
      @table = table
    end

    def place(east, north, facing)
      # First check if the placement location is valid
      return unless @table.valid_location?(east, north)
      # If placement is valid create a new instance of the Robot class
      @robot = Robot.new(east, north, facing)
    end

    def move
      robot.move
    end

    def turn_left
      robot.turn_left
    end

    def turn_right
      robot.turn_right
    end
    
    def report
      robot.report
    end

  end
end