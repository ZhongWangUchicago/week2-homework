
class GreetController < ApplicationController
	def hi
		# If there is a parameter
		if params["salutation"]	
			@salutation = params["salutation"]
		# If not, say hello
		else
			@salutation = "Hello"
		end
	end
end