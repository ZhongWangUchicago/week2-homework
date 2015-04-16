class DiceController < ApplicationController

	def play
		@numbers = [1, 2, 3, 4, 5, 6].sample(2)
		@sum = @numbers[0] + @numbers[1]
		@goal = params["total"]

		# Not the first time
		if @goal
			if @sum == @goal
				@message = "YOU WIN!"
				@button = "Start over"
			elsif @sum == 7
				@message = "YOU LOSE."
				@button = "Start over"
			else
				@message = "Your goal is #{@goal} but you rolled #{@sum}. You can roll again."
				@button = "Roll Again."
			end
		# First time
		else
			if @sum == 7 || @sum == 11
				@message = "YOU WIN!"
				@button = "Start over"
			elsif @sum == 2 || @sum ==3 || @sum == 12
				@message = "YOU LOSE."
				@button = "Start over"
			else
				@goal = @sum
				@your_goal = "Your goal is now #{@goal}."
				@message = "Now try to get #{@goal} again before you roll a 7."
				@button = "Roll the dice"
			end		
		end	
	end
end