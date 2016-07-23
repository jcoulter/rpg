require 'rspec'
require_relative '../lib/character'

describe 'Character' do

  it 'should initialize health' do
    expect(Character.new.health).to eq(1000)
  end
end