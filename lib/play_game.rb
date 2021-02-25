require_relative('rock_paper_scissors')

class Game
  def self.start_game
    puts "Would you like to play game?"
    game = RPS.new()
    score = 0
    loop do
      puts "pick an action"
      player_one = gets.chomp
      puts game.wins?(player_one, game.computer)
      puts "Do you want to play again?"
      break if gets.chomp == "n"
    end
  end
end

Game.start_game