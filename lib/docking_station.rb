require_relative './bike.rb'

class DockingStation

  attr_reader :bike

  def release_bike
    raise "Error - no bikes" unless @bike
    @bike
  end

  def dock_bike(bike)
    @bike = bike
  end

end
