require './lib/bike'

class DockingStation

  attr_reader :bike

  def release_bike
    @bike  
  end

  def dock(bike)
    @bike = bike
  end

  def empty?
    raise "docking station is empty"
  end

  

end
