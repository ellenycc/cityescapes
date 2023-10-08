class CottagesController < ApplicationController
  def index
    @cottages = Cottage.all
    @markers = @cottages.geocoded.map do |cottage|
      {
        lat: cottage.latitude,
        lng: cottage.longitude
      }
    end
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

  def edit
    @cottage = Cottage.find(params[:id])
    @cottage.photo.attach(params[:photo])
  end

  def update
    @cottage = Cottage.find(params[:id])
    @cottage.update(cottage_params)
    redirect_to cottage_path(@cottage)
  end

  def destroy
    @cottage = Cottage.find(params[:id])
    @cottage.destroy
    redirect_to cottages_path
  end

  private

  def cottage_params
    params.require(:cottage).permit(:name, :address, :description, :price_per_night, :number_of_guests, :photo)
  end
end
