require 'rspec'
require_relative '../lib/character'

describe 'Character' do

  it 'should initialize health' do
    expect(Character.new.health).to eq(1000)
  end

  it 'should initialize level' do
    expect(Character.new.level).to eq(1)
  end

end