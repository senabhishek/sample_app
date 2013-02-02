class SessionsController < ApplicationController

	def new
  end

  def create
  	user = User.find_by_email(params[:session][:email].downcase)
  	if user && user.authenticate(params[:session][:password])
  		# Sign in the user and redirect to the user's show page
  		sign_in user
  		redirect_back_or user
  	else
  		# Create error and re-render sign in page
  		flash.now[:error] = 'Invalid email/password combination'
  		render 'new'
  	end
  end

  def destroy
    sign_out
    redirect_to root_url
  end

end
