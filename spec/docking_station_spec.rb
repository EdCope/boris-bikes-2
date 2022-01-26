require_relative "../lib/docking_station.rb"
require_relative "../lib/bike.rb"

describe DockingStation do 
  describe "#release_bike" do
    # it "should release bike" do
    #   docking_station = DockingStation.new
    #   expect(docking_station).to respond_to(:release_bike)
    # end
    it { should respond_to(:release_bike)}


    it "should release a working bike" do
      docking_station = DockingStation.new
      expect(docking_station.release_bike).to respond_to(:working?)
    end
  end
end 