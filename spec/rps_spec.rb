require('rspec')
require('rps')

describe('RPS#wins') do
  it("returns 0 if rock is the object and scissors is the argument") do
    game = RPS.new()
    expect(game.wins("rock", "scissors")).to(eq(0))
  end
  it("returns 1 if the scissors is the object and rock is the argument") do
    game = RPS.new()
    expect(game.wins("scissors","rock")).to(eq(1))
  end
  it("returns 2 if the rock is the object and rock is the argument") do
    game = RPS.new()
    expect(game.wins("rock","rock")).to(eq(2))
  end
  it("returns false if an invalid (non 'rock', 'paper', 'scissors') input is submitted") do
    game = RPS.new()
    expect(game.wins("rock","potato")).to(eq(false))
  end
end
