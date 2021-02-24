require('rspec')
require('pry')
require('rock_paper_scissors')

describe('RPS') do
  describe("#wins") do 
    it("returns true if rock is the object and scissors is the argument") do
      game = RPS.new()
      expect(game.wins?("rock", "scissors")).to(eq(true))
    end
  end
end