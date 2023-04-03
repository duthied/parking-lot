require 'spec_helper'
require_relative '../lib/pay_lot'

# > bundle exec rspec

describe PayLot do

  describe '.park_car' do

    context 'when there is space' do
      let(:lot) { PayLot.new(1) }

      it '.exit_lot' do
        expect(lot).respond_to?(:exit_lot)
      end

      it 'returns the fee when exiting' do
        plate_number = 'abc 123'
        parking_pass = lot.park_car(plate_number)

        sleep(0.02)
        invoice = lot.exit_lot(plate_number)
        expect(invoice.fee).to be > 0
      end

      # it 'returns the number of seconds since the pass was issued' do
      #    
      #   

      #   puts "#{parking_pass}"
        
      #   sleep(1)
      #   expect()
      # end


      # it "returns a parking pass" do
      #   expect(lot.park_car('abc 123')).not_to eq nil
      # end

      # it "sets the vacancy" do
      #   expect(lot.has_vacancy?).to eq true
      #   lot.park_car('abc 123')
      #   expect(lot.has_vacancy?).to eq false
      # end

      # it "reports the accurate space count" do
      #   expect(lot.vacant_space_count).to eq 1
      #   lot.park_car('abc 123')
      #   expect(lot.vacant_space_count).to eq 0
      # end
    end
  end
end
