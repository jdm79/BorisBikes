require './lib/bike'

class DockingStation

  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    raise "docking station is empty" unless @bikes.length > 0
    @bikes  
  end

  def dock(bike)
    raise "docking station is full" unless @bikes.length < 20
    @bikes << bike
    @bikes[0]
  end

end
