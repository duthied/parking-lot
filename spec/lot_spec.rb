require 'spec_helper'
require_relative '../lib/lot'

describe 'lot' do
  it 'should initialize' do
    expect(Lot).to receive(:new)
    obj = Lot.new
  end 
end

# describe 'addOne' do
#   it 'should add 1 to what was passed in' do
#     expect(addOne(1)).to eq 2
#   end
# end
