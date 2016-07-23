require 'rspec'
require_relative '../lib/character'

MAX_HEALTH = Character::MAX_HEALTH

describe 'Character' do

  before(:each) do
    @character = Character.new
  end

  it 'should initialize health' do
    expect(@character.health).to eq(MAX_HEALTH)
  end

  it 'should initialize level' do
    expect(@character.level).to eq(1)
  end

  it 'should be alive' do
    expect(@character.alive?).to be(true)
  end

  it 'should take damage' do
    damage = 10
    @character.damage(damage)
    expect(@character.health).to eq(MAX_HEALTH - damage)
  end

  it 'should die when it gets to 0 health' do
    @character.damage(MAX_HEALTH)
    expect(@character.alive?).to be(false)
  end


end