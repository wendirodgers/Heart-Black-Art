class ArtistsController < ApplicationController
  def index
    @results = Artist.where(artist_params)
    render json: @results 
  end

  def show 
    @result = Artist.find(params[:id])
    render json: @result
  end

private

  def artist_params
  params.permit(:name, :gender, :age, :facebook, :instagram, :tumblr, :twitter)
  end

# create
# params[]
# if params are not empty
# create a new artists with name = params[:name]
end
