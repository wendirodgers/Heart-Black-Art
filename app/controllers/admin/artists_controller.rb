class Admin::ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)

    if @artist.save
      redirect_to admin_artists_path
    else
      flash[:errors] = @artist.errors.full_messages
      render :new
    end
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.media.destroy_all
    @artist.media = Medium.find(params[:media])
    if @artist.update(artist_params)
      redirect_to admin_artists_path
    else 
      flash[:errors] = @artist.errors.full_messages
      render :edit
    end
  end

  def edit 
    @artist = Artist.find(params[:id])
    @artist_media = @artist.media
  end

  def destroy
  end

private

  def artist_params
    params.require(:artist).permit(:instagram, :name, :gender, :age, :facebook, :tumblr, :twitter, :location, :image, :website)
  end
end
