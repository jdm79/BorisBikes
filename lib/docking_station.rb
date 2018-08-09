require './lib/bike'

class DockingStation

  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    fail "docking station is empty" if empty?
    @bikes.pop
  end

  def dock(bike)
    raise "docking station is full" unless full?
    @bikes << bike 
    @bikes[0]
  end

  private

  def full?
    @bikes.length < 20
  end

  def empty?
    @bikes.empty? 
  end

end
