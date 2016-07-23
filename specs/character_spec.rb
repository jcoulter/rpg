require 'rspec'
require_relative '../lib/character'

describe 'Character' do

  before(:each) do
    @character = Character.new
  end

  it 'should initialize health' do
    expect(@character.health).to eq(1000)
  end

  it 'should initialize level' do
    expect(@character.level).to eq(1)
  end

  it 'should be alive' do
    expect(@character.alive?).to be(true)
  end

end