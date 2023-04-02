require 'spec_helper'
require_relative '../lib/lot'

describe Lot do

  describe ".park_car" do
    let(:lot) { Lot.new(2) }

    context "when there is more than one space open" do
      it "returns a parking pass" do
        expect(lot.park_car('abc 123')).not_to eq nil
      end

      it "sets the vacancy" do
        lot.park_car('abc 123')
        expect(lot.has_vacancy?).to eq true
      end

      it "reports the accurate space count" do
        lot.park_car('abc 123')
        expect(lot.vacant_space_count).to eq 1
      end
    end

    context "when there is only one space open" do
    end

    context "when there no spaces open" do
    end

  end


  # when parking a car, we should have
  it 'should return a parking pass when parking' do
    l = Lot.new() # default init
    expect(l.park_car('abc 123')).not_to eq nil
  end

end

# describe StringCalculator do

#   describe ".add" do
#     context "given an empty string" do
#       it "returns zero" do
#         expect(StringCalculator.add("")).to eq(0)
#       end
#     end
#   end
# end

# describe 'lot' do

  # basic interface

  # when parking a car, we should have
  # it 'should return a parking pass when parking' do
  #   l = Lot.new() # default init
  #   expect(l.park_car('abc 123')).not_to eq nil
  # end

  ## decremented the available spots
  # it 'should decrement the available spots when parking a car' do
  #   l = Lot.new() # default init
  #   initial_spots = l.vacant_space_count
  #   l.park_car('abc 123')
  #   expect(l.vacant_space_count).to eq initial_spots - 1
  # end

  ## if capacity is full, we shouldn't be able to park


  # it 'should initialize' do
  #   expect(Lot).to receive(:new)
  #   lot = Lot.new
  # end 

  # it 'should allow a car to park' do
  #   expect(Lot).to receive(:park_car)
  #   lot = Lot.new
  #   lot.park_car('abc 123')
  # end

  # it 'should report the vacation space count' do
  # end

  # it 'should indicate the vacancy' do
  # end

# end
