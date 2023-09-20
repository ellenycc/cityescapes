class CottagesController < ApplicationController
  def index
    @cottages = Cottage.all
  end

  def show
    @cottage = Cottage.find(params[:id])
  end
end
