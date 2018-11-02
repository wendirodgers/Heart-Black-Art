class MediaController < ApplicationController
  def index
    @results = Media.all
    render json: @results
  end

  def show
  end
end
