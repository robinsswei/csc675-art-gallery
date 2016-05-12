class ArtworkSellerMapsController < ApplicationController
  before_action :set_artwork_seller_map, only: [:show, :edit, :update, :destroy]

  # GET /artwork_seller_maps
  # GET /artwork_seller_maps.json
  def index
    @artwork_seller_maps = ArtworkSellerMap.all
  end

  # GET /artwork_seller_maps/1
  # GET /artwork_seller_maps/1.json
  def show
  end

  # GET /artwork_seller_maps/new
  def new
    @artwork_seller_map = ArtworkSellerMap.new
  end

  # GET /artwork_seller_maps/1/edit
  def edit
  end

  # POST /artwork_seller_maps
  # POST /artwork_seller_maps.json
  def create
    @artwork_seller_map = ArtworkSellerMap.new(artwork_seller_map_params)

    respond_to do |format|
      if @artwork_seller_map.save
        format.html { redirect_to @artwork_seller_map, notice: 'Artwork seller map was successfully created.' }
        format.json { render :show, status: :created, location: @artwork_seller_map }
      else
        format.html { render :new }
        format.json { render json: @artwork_seller_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artwork_seller_maps/1
  # PATCH/PUT /artwork_seller_maps/1.json
  def update
    respond_to do |format|
      if @artwork_seller_map.update(artwork_seller_map_params)
        format.html { redirect_to @artwork_seller_map, notice: 'Artwork seller map was successfully updated.' }
        format.json { render :show, status: :ok, location: @artwork_seller_map }
      else
        format.html { render :edit }
        format.json { render json: @artwork_seller_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artwork_seller_maps/1
  # DELETE /artwork_seller_maps/1.json
  def destroy
    @artwork_seller_map.destroy
    respond_to do |format|
      format.html { redirect_to artwork_seller_maps_url, notice: 'Artwork seller map was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artwork_seller_map
      @artwork_seller_map = ArtworkSellerMap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artwork_seller_map_params
      params.require(:artwork_seller_map).permit(:artwork, :seller_id)
    end
end
