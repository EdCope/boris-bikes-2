require_relative "../lib/docking_station.rb"

describe DockingStation do 
    # it "should release bike" do
    #   docking_station = DockingStation.new
    #   expect(docking_station).to respond_to(:release_bike)
    # end
    it { should respond_to(:release_bike)}

    it "should release a working bike" do   #it's this test that was failing and needed
      bike = Bike.new                       #changing - lines 11 & 12 are new, and make 
      subject.dock_bike(bike)               #it so that release_bike has a bike to release
      expect(subject.release_bike).to be_working
    end

  describe "#release_bike" do
    it "raises an error when there are no bike available" do
      expect {subject.release_bike}.to raise_error("Error - no bikes")
    end
  end

  describe "#dock_bike" do
    it{ expect(subject).to respond_to(:dock_bike).with(1).argument}

    it "docks something" do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.dock_bike(bike)).to eq bike
    end
  end
end 