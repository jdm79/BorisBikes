require './lib/bike'

class DockingStation

  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    @bikes unless empty?
  end

  def dock(bike)
    @bikes << bike unless full?
    @bikes[0]
  end

  private

  def full?
    raise "docking station is full" unless @bikes.length < 20
  end

  def empty?
    raise "docking station is empty" unless @bikes.length > 0
  end

end
