module ToyRobot
  class CLI
    attr_reader :simulator

    # Load commands from the command file 
    def load_commands(commands_file)
      File.readlines(commands_file).map do |command|
        ToyRobot::Command.process(command)
      end
    end

    # This method takes each of our commands as well as their names and then sends that command with it's arguments (eg. [:place, 0, 0, "NORTH"]).
    def run(commands)
      commands.each do |command, *args|
        simulator.send(command, *args)
      end
    end

  end
end