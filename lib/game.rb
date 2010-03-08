require 'rubygems'
require 'item'

class Game
  attr_accessor :choice_id, :user_choice, :computer_choice

  CHOICES = [Rock, Paper, Scissors, Spock, Lizard]
  WIN  = "Congrats! You win!".freeze
  LOSE = "You Lost, but nice try!".freeze
  TIE  = "It was a tie. well, put up a good fight".freeze

  def initialize(choice_id)
    self.choice_id = choice_id
  end

  def random_choice
    CHOICES[rand(CHOICES.size)].new
  end

  def get_user_choice
    CHOICES[choice_id].new
  end

  def fight!
    self.user_choice     = get_user_choice
    self.computer_choice = random_choice

    if user_choice.to_sym == computer_choice.to_sym
      TIE
    elsif user_choice.beats?(computer_choice.to_sym)
      WIN
    else
      LOSE
    end
  end
end