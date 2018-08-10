require "docking_station"

describe DockingStation do
  
  it "checks if dock is empty" do
    # expect(subject.empty?).to eq(nil)
    expect { subject.release_bike }.to raise_error("docking station is empty")
  end

  it "checks if dock is full" do
    subject.capacity.times { subject.dock(Bike.new) }
    expect { subject.dock Bike.new }.to raise_error("Docking station is full")
  end

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe 'initialization' do
    it 'has a variable capacity' do
      docking_station = DockingStation.new(10)
      10.times { docking_station.dock Bike.new }
      expect{ docking_station.dock Bike.new }.to raise_error 'Docking station is full'
    end
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
    expect(subject.bikes[-1]).to eq bike
  end

end
