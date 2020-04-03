module ToyRobot
  class CLI
    attr_reader :simulator

    # Initialize a new table for our robot to be placed upon when we run our CLI
    def initialize
      table = ToyRobot::Table.new(5, 5)
      @simulator = ToyRobot::Simulator.new(table)
    end

    def load_commands(commands_file)
      File.readlines(commands_file).map do |command|
        ToyRobot::Command.process(command)
      end
    end

    def run(commands)
      commands.each do |command, *args|
        simulator.send(command, *args)
      end
    end
  end
end