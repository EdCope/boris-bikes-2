require_relative '../lib/bike.rb'

describe Bike do
  describe "#bike_works?" do
    # it "should respond to working" do
      # bike = Bike.new
      # expect(bike).to respond_to(:working?)
    #end
    it { should respond_to(:working?)}
  end
end