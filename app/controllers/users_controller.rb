class UsersController < ApplicationController
  def index
  end

  def new
    @states = State.all
  end

  def create

      
    addr = Address.new
    addr.address = "#{user_params[:address]}"
    addr.postcode = "#{user_params[:postcode]}"
    addr.state_id = "#{user_params[:state]}"
    addr.save

    user = User.new
    user.name = "#{user_params[:name]}"    
    user.email =  "#{user_params[:email]}"
    user.address_id = "#{addr.id}"
    user.password = "#{user_params[:password]}"
 
    user.save

  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end


  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :address, :postcode, :state)
  end
end
