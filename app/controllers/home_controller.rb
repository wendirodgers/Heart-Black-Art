class HomeController < ApplicationController
  def index
    if params[:search_artists].present?
      @artists = Artist.search_artists(params[:search_artists]).page params[:page]
    else
      @artists = Artist.page params[:page]
    end
  end 

  def show
    @artist = Artist.find(params[:id])
  end
end
