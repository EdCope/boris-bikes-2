require_relative './bike.rb'

class DockingStation
  attr_reader: @bikes
  def initialize
    @bikes = []
  end

  def release_bike
    Bike.new
  end

  def dock_bike(bike)
    @bikes << bike
  end

  def station_status
    if @bikes.length > 0
      "Available"
    else
      "No Bikes"
    end
  end
end
