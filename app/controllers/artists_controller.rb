class ArtistsController < ApplicationController
  def index
   @results = Artist.all
   render json: @results 
  end

  def show
  end
end
