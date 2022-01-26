#require_relative './bike.rb'

class DockingStation

  attr_reader :bike

  def release_bike
    fail 'Error' unless @bike
    @bike
  end

  def dock_bike(bike)
    @bike = bike
  end
end
