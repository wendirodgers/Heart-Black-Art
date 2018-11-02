class LocationsController < ApplicationController
  def index
    @results = Location.all
    render json: @results
  end

  def show
  end
end
