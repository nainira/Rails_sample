class SessionsController < ApplicationController
	def new
		if signed_in?
			flash[:success] = "you are already signed in!"
			redirect_to root_path
		else
			render 'new'
		end
	end

	def create
		user = User.find_by_email(params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			# Sign the user in and redirect to the user's show page.
			sign_in user
			redirect_back_or user
		else
			flash.now[:error] = 'Invalid email/password combination' # Not quite right!
			render 'new'
		end
	end

	def destroy
		sign_out
		redirect_to root_url
	end
end
