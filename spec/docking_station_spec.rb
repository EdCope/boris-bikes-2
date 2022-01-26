require_relative "../lib/docking_station.rb"

describe DockingStation do 
  describe "#release_bike" do
    # it "should release bike" do
    #   docking_station = DockingStation.new
    #   expect(docking_station).to respond_to(:release_bike)
    # end
    it { should respond_to(:release_bike)}

    it { expect(subject.release_bike).to be_working}
    #it "should release a working bike" do
      #expect(subject.release_bike).to be_working
    #end

    #As a member of the public
    #So I can return bikes I've hired
    #I want to dock my bike at the docking station
  end
  describe "#dock_bike" do
    it{ expect(subject).to respond_to(:dock_bike).with(1).argument}
    it "should check the status of a station" do
      docking_station = DockingStation.new
      bike = Bike.new
      expect(subject.station_status).to eq("Available")
    end
  end
end 