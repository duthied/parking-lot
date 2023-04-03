#!/usr/bin/env ruby
require 'json'
require_relative './modules/lot'

class SimpleLot
  include Lot

  def initialize(max_capacity = 10)
    super(max_capacity)
  end

end
