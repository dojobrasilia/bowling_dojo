#!/usr/bin/ruby

class Bowling
	
	def initialize
		@frames = []
	end
	
	def score
		pins = 0
		strike = false
		spare = false
		
		for i in (0..@frames.length-1) do
			frame=@frames[i]
			nextFrame=@frames[i+1]
			nextNextFrame=@frames[i+2]
			
			spare =  (frame[0]+frame[1] == 10 and frame[0] != 10)
			strike = (frame[0] == 10)			

			if strike
				
				if !nextFrame.nil?
					if nextFrame[0] != 10
						pins += frame[0] + nextFrame[0] + nextFrame[1]
					else
						#todo next next eh nil ???
						pins += frame[0] + nextFrame[0] + nextNextFrame[0]
					end
				else
					# e agora??
				end
				
			elsif spare
				# next eh nil????
				pins += frame[0] + frame[1] + nextFrame[0]
			else
				pins += frame[0] + frame[1]
			end
		end
		
		pins
	end
	
	def frame(ball1,ball2)
		@frames<<[ball1,ball2]
		
		
	end
	
end