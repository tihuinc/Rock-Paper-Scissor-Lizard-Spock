require 'game'

describe Game do
  it "gets a random choice and a user choice" do
    game = Game.new(0)

    game.random_choice.is_a?(Item).should be_true
    game.get_user_choice.to_s.should == Rock.new.to_s
  end

  it "should fight and get a result" do
    game = Game.new(1)
    result = game.fight!
    result.should be_a_kind_of String
  end
end