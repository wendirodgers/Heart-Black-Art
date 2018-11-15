class MediaController < ApplicationController
  def index
    @results = Medium.all
    render json: @results
  end

  def show
    @result = Medium.find(params[:id])
    render json: @result
  end

# create
# params[]
# if params are not empty
# create a new artists with name = params[:name]
end
