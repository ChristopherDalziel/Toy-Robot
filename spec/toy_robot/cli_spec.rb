require "spec_helper"

RSpec.describe ToyRobot::CLI do
  subject { ToyRobot::CLI.new }

  context "load_commands" do
    it "loads commands from file" do
      path = File.dirname(__FILE__) + "/../fixtures/commands.txt"
      commands = subject.load_commands(path)
      expect(commands).to eq([
        [:place, 0, 0, "NORTH"], [:move],
        [:turn_right], [:turn_left],
        [:report] 
      ])
    end
  end

  context "run" do
    let(:simulator) { instance_double(ToyRobot::Simulator) }

    before do
      allow(subject).to receive(:simulator) { simulator }
    end

    context "place command" do
      it "passes a place command to the simulator" do
        expect(simulator).to receive(:place).with(0, 0, "NORTH")
        subject.run([[:place, 0, 0, "NORTH"]])
      end
    end 
  end

  context "move command" do
    it "passes a move command to the simulator" do
      expect(simulator).to receive(:move)
      subject.run([:move])
  end

end