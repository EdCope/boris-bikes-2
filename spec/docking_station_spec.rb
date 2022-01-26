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

    it "should stop releasing bikes when there are none" do
      expect { subject.release_bike }.to raise_error 'Error'
    end

  end
  describe "#dock_bike" do
    it{ expect(subject).to respond_to(:dock_bike).with(1).argument}

    it "docks something" do
      bike = Bike.new
      expect(subject.dock_bike(bike)).to eq bike
    end

    
  end
end 