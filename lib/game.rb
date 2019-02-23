class Game
  RPS = ['rock', 'paper', 'scissors']
  WINNERS = { 'rock' => 'scissors', 'paper' => 'rock', 'scissors' => 'paper' }

  attr_reader :game_choice

  def random_rps
    RPS.sample
  end

  def play(player_choice)
    @game_choice = random_rps
    result(player_choice)
  end

  private

  def result(player_choice)
    return "WIN" if WINNERS[player_choice] == @game_choice
    return "LOSE" if WINNERS[@game_choice] == player_choice
    "DRAW"
  end

end
