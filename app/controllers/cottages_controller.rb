class CottagesController < ApplicationController
  def index
    @cottages = Cottage.all
  end

  def show
    @cottage = Cottage.find(params[:id])
  end

  def new
    @cottage = Cottage.new
  end

  def create
    @cottage = Cottage.new(cottage_params)
    @cottage.save
    redirect_to cottage_path(@cottage)
  end

  private

  def cottage_params
    params.require(:cottage).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
