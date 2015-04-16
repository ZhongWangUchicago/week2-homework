class ContactController < ApplicationController
	def contact
	end
	def saved
		@firstname = params['firstname'] # First name
		@lastname = params['lastname']   # Last name
	end
end