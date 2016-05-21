class SessionsController < ApplicationController
  def new

  end
  def create
  	user = User.find_by(email: session_params[:email])
  	if user && user.authenticate(session_params[:password])
  		#success
  		log_in user
  		redirect_to root_path
  	else
  		#fail
  		flash.now[:danger] = 'Invalid email/password combination'
  		render 'new'
  	end
  end
  def destroy
  	log_out
  	redirect_to root_path
  end
  def session_params
    params.require(:session).permit(:email, :password)
  end
end
