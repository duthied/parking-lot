#!/usr/bin/env ruby
require 'json'

ParkingPass = Struct.new(:time, :plate_number)

class Lot

  def initialize(max_capacity = 10)
    @max_capacity = max_capacity
    @parked_cars = {}
    # puts "\nSalem's (Parking) Lot open for business\noffering #{@max_capacity} luscious parking spots\n\n"
  end

  def vacant_space_count
    return (@parked_cars.size - @max_capacity).abs
  end

  def has_vacancy?
    return @parked_cars.size < @max_capacity
  end

  # takes a plate number and if there is capacity
  # returns a parking pass with the current timestamp
  def park_car(plate_number)
    return nil unless @parked_cars.size <= @max_capacity

    pp = ParkingPass.new Time.now(), plate_number # .to_json
    
    # add new parking pass to the hash
    @parked_cars[plate_number] = pp.to_json
    # return the parking pass
    return pp.to_json
  end

end