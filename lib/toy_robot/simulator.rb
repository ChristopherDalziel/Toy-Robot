module ToyRobot
  class Simulator
    attr_reader :robot

    def initialize(table)
      @table = table
    end

    def robot_placed?
      !robot.nil?
    end

    def place(east, north, facing)
      # First check if the placement location is valid
      return unless @table.valid_location?(east, north)
      # If placement is valid create a new instance of the Robot class
      @robot = Robot.new(east, north, facing)
    end

    def move
      return unless robot_placed?
      return unless @table.valid_location?(*robot.next_move)

      robot.move
    end

    def turn_left
      return unless robot_placed?

      robot.turn_left
    end

    def turn_right
      return unless robot_placed?

      robot.turn_right
    end
    
    # What does report output? 
    def report
      return unless robot_placed?

      position = robot.report
      puts "The robot is currently at (#{position[:north]}, #{position[:east]})" + " and it's facing #{position[:direction]}"
    end

    def invalid(command)
      puts "'#{command.strip}' is an invalid command"
    end

  end
end