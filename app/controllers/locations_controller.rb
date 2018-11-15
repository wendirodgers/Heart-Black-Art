class LocationsController < ApplicationController
  def index
    @results = Location.all
    render json: @results
  end

  def show
    @result = Location.find(params[:id])
    render json: @result
  end

# create
# params[]
# if params are not empty
# create a new artists with name = params[:name]
end

