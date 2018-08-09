require "docking_station"

describe DockingStation do
  
  # describe '#release_bike' do
  #   it "releases a bike" do
  #     bike = Bike.new
  #     subject.dock(bike)
  #     expect(subject.release_bike).to eq bike
  #   end
  # end

  it "checks if dock is empty" do
    # expect(subject.empty?).to eq(nil)
    expect { subject.release_bike }.to raise_error("docking station is empty")
  end

  it "checks if dock is full" do
    subject.dock(Bike.new)
    expect { subject.dock Bike.new }.to raise_error("docking station is full")
  end

  it "releases working bikes" do
    # bike = subject.release_bike
    expect(Bike.new).to be_working
  end

  it "docks a bike" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it "shows bike availability" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end
