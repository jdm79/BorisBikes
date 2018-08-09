require './lib/bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    fail "docking station is empty" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "docking station is full" if full?
    @bikes << bike 
    @bikes[0]
  end

  private

  def full?
    @bikes.length >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty? 
  end

end
