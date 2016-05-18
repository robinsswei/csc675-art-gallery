class ArtworkImageMapsController < ApplicationController
  before_action :set_artwork_image_map, only: [:show, :edit, :update, :destroy]

  # GET /artwork_image_maps
  # GET /artwork_image_maps.json
  def index
    @artwork_image_maps = ArtworkImageMap.order("id ASC").paginate(:page => params[:page], :per_page => 10)
  end

  # GET /artwork_image_maps/1
  # GET /artwork_image_maps/1.json
  def show
  end

  # GET /artwork_image_maps/new
  def new
    @artwork_image_map = ArtworkImageMap.new
  end

  # GET /artwork_image_maps/1/edit
  def edit
  end

  # POST /artwork_image_maps
  # POST /artwork_image_maps.json
  def create
    @artwork_image_map = ArtworkImageMap.new(artwork_image_map_params)

    respond_to do |format|
      if @artwork_image_map.save
        format.html { redirect_to @artwork_image_map, notice: 'Artwork image map was successfully created.' }
        format.json { render :show, status: :created, location: @artwork_image_map }
      else
        format.html { render :new }
        format.json { render json: @artwork_image_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artwork_image_maps/1
  # PATCH/PUT /artwork_image_maps/1.json
  def update
    respond_to do |format|
      if @artwork_image_map.update(artwork_image_map_params)
        format.html { redirect_to @artwork_image_map, notice: 'Artwork image map was successfully updated.' }
        format.json { render :show, status: :ok, location: @artwork_image_map }
      else
        format.html { render :edit }
        format.json { render json: @artwork_image_map.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artwork_image_maps/1
  # DELETE /artwork_image_maps/1.json
  def destroy
    @artwork_image_map.destroy
    respond_to do |format|
      format.html { redirect_to artwork_image_maps_url, notice: 'Artwork image map was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artwork_image_map
      @artwork_image_map = ArtworkImageMap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def artwork_image_map_params
      params.require(:artwork_image_map).permit(:artwork_id, :image_id)
    end
end
