require './lib/bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :capacity
  attr_reader :bikes

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail "docking station is empty" if empty?
    bikes.pop
  end

  def dock(bike)
    fail "Docking station is full" if full?
    bikes << bike 
    bikes[-1]
  end

  private

  def full?
    bikes.length >= capacity
  end

  def empty?
    bikes.empty? 
  end

end
