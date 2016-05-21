class HomeController < ApplicationController
  def index
  	redirect_to '/login' unless current_user
  	@homestays =Homestay.all
  end
end
