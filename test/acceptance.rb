require 'spec'
require 'src/bowling.rb'
require 'ftools'

describe Bowling do
	
	it "should read an input file and generate another equals to the model" do
		
		File.delete "test/output.txt"
		
		system "./src/bowling.rb test/input1.txt test/output.txt"
		
		File.compare("test/output.txt", "test/resultado.txt").should == true
		
	end
	
end