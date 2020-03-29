require "spec_helper" 

RSpec.describe ToyRobot::Robot do
  subject { ToyRobot::Robot.new(0) }
    it "moves 3 spaces east" do
      3.times { subject.move_east } 
      expect(subject.east).to eq(3)
  end 

  it "moves 4 spaces east" do
    4.times { subject.move_east }
    expect(subject.east).to eq(4)
  end

  it "moves 3 spaces west" do
    3.times { subject.move_west }
    expect(subject.east).to eq(-3)
  end

  # It's important that we have tests like this (More than the single test above) in order to ensure our tests are more robust to human error, if we wrote '= -3' into the move_west method, the test above would pass and we would assume our app functions correctly. By adding this test we negate that possibility.
  it "moves 4 spaces west" do
    4.times { subject.move_west }
    expect(subject.east).to eq(-4)
  end

  it "moves 3 spaces north" do
    3.times { subject.move_north }
    expect(subject.north).to eq(3)
  end

  it "moves 4 spaces" do
    4.times { subject.move_north }
    expect(subject.north).to eq(4)
  end

end