#!/usr/bin/ruby

class Bowling
	
	def initialize
		@frames = []
	end
	
	def score
		pins = 0
		strike = false
		spare = false
		
		for frame in @frames do
			if strike
				if frame[0]!=10
					pins += (2*frame[0]) + (2*frame[1])
				else
					pins += frame[0]
				end
			elsif spare
				pins += (2*frame[0]) + frame[1]
			else
				pins += frame[0] + frame[1]
			end

			spare =  (frame[0]+frame[1] == 10 and frame[0] != 10)
			strike = (frame[0] == 10)			
		end
		
		pins
	end
	
	def frame(ball1,ball2)
		@frames<<[ball1,ball2]
		
		
	end
	
end