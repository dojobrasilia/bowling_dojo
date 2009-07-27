require 'spec'
require 'src/bowling.rb'

describe Bowling do
	
	before(:each) do
		@match = Bowling.new
	end
	
	it "should compute the score for the empty game" do
		@match.score.should == 0
	end

	it "should compute the first ball" do
		@match.frame(1,0)
		@match.score.should == 1
	end
	
	it "should compute the second ball" do
		@match.frame(0,2)
		@match.score.should == 2
	end
	
	it "should compute a frame" do
		@match.frame(1,2)
		@match.score.should == 3
	end
	
	it "should compute two frames" do
		@match.frame(1,1)
		@match.frame(2,2)
		@match.score.should == 6
	end
	
	it "should compute a spare" do
		@match.frame(1,9)
		@match.frame(1,1)
		@match.score.should == 13
	end
	
	it "should compute another spare" do
		@match.frame(9,1)
		@match.frame(2,5)
		@match.score.should == 19
	end
	
	it "should compute two consecutive spares" do
		@match.frame(5,5)
		@match.frame(6,4)
		@match.frame(1,1)
		@match.score.should == 29
	end
	
	it "should compute a zero after a spare" do
		@match.frame(5,5)
		@match.frame(0,1)
		@match.score.should == 11
	end
	
	it "should compute a strike" do
		@match.frame(10, 0)
		@match.frame(2, 1)
		@match.score.should == 16
	end
	
#	it "should compute two consecutive strikes" do
#		@match.frame(10, 0)
#		@match.frame(10, 0)
#		@match.frame(2, 1)
#		@match.score.should == 38
#	end
	
	
	
	
	
	
	
	
	
end