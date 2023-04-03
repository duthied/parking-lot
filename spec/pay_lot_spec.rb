require 'spec_helper'
require_relative '../lib/pay_lot'

# > bundle exec rspec

describe PayLot do

  describe '.park_car' do

    context '.exit_lot' do
      let(:lot) { PayLot.new(1) }

      it 'returns the fee when exiting' do
        plate_number = 'abc 123'
        parking_pass = lot.park_car(plate_number)

        sleep(0.02)
        invoice = lot.exit_lot(plate_number)
        expect(invoice.fee).to be > 0
      end

      it 'correctly decrements the spots available' do
        plate_number = 'abc 123'
        parking_pass = lot.park_car(plate_number)
        before_count = lot.vacant_space_count
        invoice = lot.exit_lot(plate_number)
        expect(lot.vacant_space_count).to eq 1
      end

    end
  end
end
