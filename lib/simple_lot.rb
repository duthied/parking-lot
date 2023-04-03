#!/usr/bin/env ruby
require 'json'
require_relative './modules/lot'

class SimpleLot
  include Lot

  def initialize(max_capacity = 10)
  #   @max_capacity = max_capacity
  #   @parked_cars = {}
    super(max_capacity)
  end

end
