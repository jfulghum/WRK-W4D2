class CatRentalRequestsController < ApplicationController

  def new
    @cat_rental_requests = CatRentalRequest.new
    @cats = Cat.all
    render :new
  end

  def index
    @cat_rental_requests = CatRentalRequest.all
    render :index
  end

  def create
    @cat_rental_request = CatRentalRequest.new(cat_rental_request_params)
    if @cat_rental_request.save
      redirect_to cat_rental_request_url(@cat_rental_request)
    else
      render :new
    end
  end

  def show
    @cat_rental_request = CatRentalRequest.find(params[:id])
    if @cat_rental_request
      render :show
    else
      redirect_to cat_rental_requests_url # are just going back to index
    end
  end


  private
  def cat_rental_request_params
    params.require(:cat_rental_request).permit(:cat_id)
  end

end
