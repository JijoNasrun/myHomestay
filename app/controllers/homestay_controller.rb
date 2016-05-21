class HomestayController < ApplicationController
  def index
  end

  def new
    @states = State.all
  end

  def create
    
    addr = Address.new
    addr.address = "#{homestay_params[:address]}"
    addr.postcode = "#{homestay_params[:postcode]}"
    addr.state_id = "#{homestay_params[:state]}"
    addr.save

    homestay = Homestay.new
    homestay.address_id = "#{addr.id}" 
    homestay.price = "#{homestay_params[:price]}"
    homestay.save

  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def homestay_params
    params.require(:homestay).permit(:address, :postcode, :state, :price)
  end

end
