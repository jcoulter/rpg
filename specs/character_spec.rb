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

  it 'should not allow negative health' do
    @character.damage(MAX_HEALTH + 3)
    expect(@character.health).to eq(0)
    expect(@character.alive?).to be(false)
  end


  it 'should heal' do
    hp = 10
    @character.damage hp
    expect(@character.health).to eq(MAX_HEALTH - hp)

    @character.heal hp

    expect(@character.health).to eq(MAX_HEALTH)
  end

  it 'should prevent healing beyond max_health' do
    hp = 10
    @character.damage hp
    expect(@character.health).to eq(MAX_HEALTH - hp)

    @character.heal(hp * 2)

    expect(@character.health).to eq(MAX_HEALTH)
  end


  it 'should not heal when dead' do
    @character.damage MAX_HEALTH

    @character.heal MAX_HEALTH

    expect(@character.health).to eq(0)
    expect(@character.alive?).to be(false)
  end

  it 'should deal damage' do
    monster = Character.new

    @character.deal_damage(monster, MAX_HEALTH)

    expect(monster.alive?).to be(false)
  end



end