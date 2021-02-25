#!/usr/bin/env ruby
class RPS
  def initialize()
    @actions = ['rock', 'scissors', 'paper']
  end
  def wins?(input_one, input_two)
    win_conditions = [
      ['rock', 'scissors'],
      ['scissors', 'paper'],
      ['paper', 'rock']
    ]
    win_conditions.each_with_index do |win_condition, winner_index|
      a,b = win_condition.sort.map(&:downcase)
      c,d = [input_one, input_two].sort.map(&:downcase)
      winner = win_conditions[winner_index][0].capitalize
      if check_input?(input_one)
        return "Wrong input! FIX IT!"
        break
      elsif "#{a} #{b}" == "#{c} #{d}"
        return "#{winner} is the winner!"
        break
      elsif "#{c}" == "#{d}"
        return "uh oh! you picked the same things"
        break
      end
    end
  end
  def check_input?(input_one)
    !@actions.include?(input_one)
  end
  def computer
    @actions.sample
  end
end