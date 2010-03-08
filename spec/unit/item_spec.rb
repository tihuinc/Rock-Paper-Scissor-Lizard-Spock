require 'item'

describe Item do
  it "should test rock beats scissors and lizard" do
    rock = Rock.new
    rock.beats?(:scissors).should be_true
    rock.beats?(:lizard).should be_true
  end

  it "should test rock does not beat paper and rock" do
    rock = Rock.new
    rock.beats?(:paper).should be_false
    rock.beats?(:spock).should be_false
  end

  it "tests an item should provide a to_sym method" do
    rock = Rock.new
    rock.to_sym.should == :rock
  end

  it "test an item should provide a to_s method" do
    rock = Rock.new
    rock.to_s.should == rock.class.name.downcase
  end
end