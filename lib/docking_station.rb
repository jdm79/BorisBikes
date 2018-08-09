require './lib/bike'

class DockingStation

  attr_reader :bike

  def release_bike
    raise "docking station is empty" unless @bike
    @bike  
  end

  def dock(bike)
    raise "docking station is full" if @bike
    @bike = bike
  end

end
