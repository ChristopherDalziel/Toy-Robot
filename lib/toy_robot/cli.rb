module ToyRobot
  class CLI
    attr_reader :simulator

    def load_commands(commands_file)
      File.readlines(commands_file).map do |command|
        ToyRobot::Command.process(command)
      end
    end

    def run(commands)
    end

  end
end