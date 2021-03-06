require 'game'

describe 'Game' do
  it "chooses paper randomly from rock, paper, scissors" do
    game = Game.new
    srand(1)
    expect(game.send(:random_rps)).to eq('paper')
  end
  it "chooses rock randomly from rock, paper, scissors" do
    game = Game.new
    srand(2)
    expect(game.send(:random_rps)).to eq('rock')
  end
  it "chooses scissors randomly from rock, paper, scissors" do
    game = Game.new
    srand(3)
    expect(game.send(:random_rps)).to eq('scissors')
  end
  it "declares player the winner if player has rock and game has scissors" do
    game = Game.new
    srand(3)
    expect(game.play('rock')).to eq("WIN")
  end
  it "declares player the loser if player has paper and game has scissors" do
    game = Game.new
    srand(3)
    expect(game.play('paper')).to eq("LOSE")
  end
  it "declares a draw if player has scissors and game has scissors" do
    game = Game.new
    srand(3)
    expect(game.play('scissors')).to eq("DRAW")
  end
  it "knows the game's choice of rps" do
    game = Game.new
    srand(3)
    game.play("rock")
    expect(game.game_choice).to eq("scissors")
  end
  it "knows the player's name" do
    game = Game.new("Sarah")
    expect(game.player).to eq("Sarah")
  end
  it "has a default player name" do
    game = Game.new
    expect(game.player).to eq("Player")
  end
end
