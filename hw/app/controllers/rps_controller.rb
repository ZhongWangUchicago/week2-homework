class RpsController < ApplicationController
	def rps
		render "rps"
	end
	def result
		@you = params[:weapon]
        @computer = ["rock", "paper", "scissors"].sample
        # Tie
        if (@you == @computer)
            @show_result = "Tie!"
        # Not a tie
        else
        	# Player selected scissors
        	if (@you == "scissors")
        		if (@computer == "rock")
        			@show_result = "You lose!"
        		elsif (@computer == "paper")
        			@show_result = "You win!"
        		end
        	# Player selected rock
        	elsif (@you == "rock")
        		if (@computer == "scissors")
        			@show_result = "You win!"
        		elsif (@computer == "paper")
        			@show_result = "You lose!"
        		end
        	# Player selected paper
        	elsif (@you == "paper")
        		if (@computer == "scissors")
        			@show_result = "You lose!"
        		elsif (@computer == "rock")
        			@show_result = "You win!"	
        		end	
        	end
        end
    end
end