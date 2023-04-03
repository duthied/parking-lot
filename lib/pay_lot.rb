#!/usr/bin/env ruby
require 'json'
require 'time'
require_relative './modules/lot'

class PayLot
  include Lot

  # provide the cost based on the time stamp of the parking pass
  # for this user
  def exit_lot(plate_number)
    # fetch parking pass for the plate number
    parking_pass = @parked_cars[plate_number]
    return nil if parking_pass.nil?

    # get number of seconds from timestamp
    start_time = Time.parse(parking_pass.time_stamp)
    end_time = Time.now
    elapsed_seconds = ((end_time - start_time) * 24 * 60 * 60).to_i
    # multiply that by $0.01
    fee = (elapsed_seconds * 0.01).to_f

    # return the time spent and cost (new struct?)
    return Lot::ParkingInvoice.new(plate_number, fee)
  end
end
