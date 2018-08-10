class Bike
  def working?
    true
  end

  def broken
    return working? ? false : true 
  end
end
