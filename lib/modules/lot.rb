#!/usr/bin/env ruby
require 'json'

module Lot
  
  ParkingPass = Struct.new(:plate_number, :time_stamp)
  ParkingInvoice = Struct.new(:plate_number, :fee)

  def initialize(max_capacity = 10)
    @max_capacity = max_capacity
    @parked_cars = {}
  end

  def vacant_space_count
    begin
      return (@parked_cars.size - @max_capacity).abs

    rescue => e
      puts "error: #{e}"
      puts "error: #{e.backtrace}"
    end
    
  end

  def has_vacancy?
    return @parked_cars.size < @max_capacity
  end

  def list_cars
    if @parked_cars.size == 0
      puts 'The lot is empty!'
    end
    @parked_cars.each do | key, value |
      puts "#{key}"
    end
  end

  # takes a plate number and if there is capacity
  # returns a parking pass with the current timestamp
  def park_car(plate_number)
    return nil unless @parked_cars.size < @max_capacity

    pp = ParkingPass.new plate_number, Time.now().to_s 
    
    # add new parking pass to the hash
    @parked_cars[plate_number] = pp
    # return the parking pass
    return pp
  end
end
