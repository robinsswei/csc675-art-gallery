class ArtworkArtistMapsController < ApplicationController
  before_action :set_artwork_artist_map, only: [:show, :edit, :update, :destroy]

  # GET /artwork_artist_maps
  # GET /artwork_artist_maps.json
  def index
    @artwork_artist_maps = ArtworkArtistMap.order("id ASC").paginate(:page => params[:page], :per_page => 10)
  end

  # GET /artwork_artist_maps/1
  # GET /artwork_artist_maps/1.json
  def show
  end

  # GET /artwork_artist_maps/new
  def new
    @artwork_artist_map = ArtworkArtistMap.new
  end

  # GET /artwork_artist_maps/1/edit
  def edit
  end

  # POST /artwork_artist_maps
  # POST /artwork_artist_maps.json
  def create
    @artwork_artist_map = ArtworkArtistMap.new(artwork_artist_map_params)

    respond_to do |format|
      if @artwork_artist_map.save
        format.html { redirect_to @artwork_artist_map, notice: 'Artwork artist map was successfully created.' }
        format.json { render :show, status: :created, location: @artwork_artist_map }
      else
        format.html { render :new }
        format.json { render json: @artwork_artist_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artwork_artist_maps/1
  # PATCH/PUT /artwork_artist_maps/1.json
  def update
    respond_to do |format|
      if @artwork_artist_map.update(artwork_artist_map_params)
        format.html { redirect_to @artwork_artist_map, notice: 'Artwork artist map was successfully updated.' }
        format.json { render :show, status: :ok, location: @artwork_artist_map }
      else
        format.html { render :edit }
        format.json { render json: @artwork_artist_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artwork_artist_maps/1
  # DELETE /artwork_artist_maps/1.json
  def destroy
    @artwork_artist_map.destroy
    respond_to do |format|
      format.html { redirect_to artwork_artist_maps_url, notice: 'Artwork artist map was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artwork_artist_map
      @artwork_artist_map = ArtworkArtistMap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artwork_artist_map_params
      params.require(:artwork_artist_map).permit(:artwork, :artist_id)
    end
end
