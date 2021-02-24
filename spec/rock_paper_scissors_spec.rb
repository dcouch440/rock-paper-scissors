require('rspec')
require('pry')
require('rock_paper_scissors')

describe('RPS') do
  describe("#wins") do 
    it("returns true if rock is the object and scissors is the argument") do
      game = RPS.new()
      expect(game.wins?("rock", "scissors")).to(eq("Rock is the winner!"))
    end
    it("returns true if scissors is the object and paper is the argument") do
      game = RPS.new()
      expect(game.wins?("scissors", "paper")).to(eq("Scissors is the winner!"))
    end
    it("returns true if paper is the object and rock is the argument") do
      game = RPS.new()
      expect(game.wins?("paper", "rock")).to(eq("Paper is the winner!"))
    end
    it("returns a promp if the players chose the same thing") do
      game = RPS.new()
      expect(game.wins?("rock", "rock")).to(eq("uh oh! you picked the same things"))
    end
  end
  describe("#check_input") do
    it("checking user input to make sure its valid input") do
      game = RPS.new()
      expect(game.check_input?("x")).to(eq(true))
    end
  end
end