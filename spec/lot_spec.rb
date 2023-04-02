require 'spec_helper'
require_relative '../lib/lot'

# > bundle exec rspec

describe Lot do

  describe ".park_car" do

    context "when there is space" do
      let(:lot) { Lot.new(1) }

      it "returns a parking pass" do
        expect(lot.park_car('abc 123')).not_to eq nil
      end

      it "sets the vacancy" do
        expect(lot.has_vacancy?).to eq true
        lot.park_car('abc 123')
        expect(lot.has_vacancy?).to eq false
      end

      it "reports the accurate space count" do
        expect(lot.vacant_space_count).to eq 1
        lot.park_car('abc 123')
        expect(lot.vacant_space_count).to eq 0
      end
    end
  end
end
