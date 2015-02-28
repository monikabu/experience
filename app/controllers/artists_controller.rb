class ArtistsController < ApplicationController
  before_action :artist, only: [:show, :edit, :update, :destroy]

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)

    if @artist.save!
      redirect_to artists_path, notice: "An artist was created"
    else
      render :new
    end
  end

  def show
    @pieces = @artist.pieces
  end

  def edit; end

  def update
    if @artist.update_attributes(artist_params)
      redirect_to artist_path(@artist.id), notice: "An artist was updated"
    else
      render :edit
    end
  end

  def destroy
    @artist.destroy
    redirect_to artists_path, alert: "An artist was destroyed"
  end

  private

  def artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name)
  end
end
