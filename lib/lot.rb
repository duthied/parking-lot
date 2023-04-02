#!/usr/bin/env ruby
require 'json'

ParkingPass = Struct.new(:plate_number, :time)

class Lot

  def initialize(max_capacity = 10)
    @max_capacity = max_capacity
    @parked_cars = {}
  end

  def vacant_space_count
    return (@parked_cars.size - @max_capacity).abs
  end

  def has_vacancy?
    return @parked_cars.size < @max_capacity
  end

  def list_cars
    @parked_cars.each do | key, value |
      puts "#{key}"
    end
  end

  # takes a plate number and if there is capacity
  # returns a parking pass with the current timestamp
  def park_car(plate_number)
    return nil unless @parked_cars.size < @max_capacity

    pp = ParkingPass.new plate_number, Time.now()  # .to_json
    
    # add new parking pass to the hash
    @parked_cars[plate_number] = pp.to_json
    # return the parking pass
    return pp.to_json
  end

end