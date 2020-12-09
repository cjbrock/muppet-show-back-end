class MuppetsController < ApplicationController
  before_action :set_muppet, only: [:show, :update, :destroy]

  # GET /muppets
  def index
    if params[:show_id]
      @show = Show.find(params[:show_id])
      @muppets = @show.muppets
    else
      @muppets = Muppet.all
    end
      render json: @muppets
  end

  # GET /muppets/1
  def show
    render json: @muppet
  end

  # POST /muppets
  def create
    @muppet = Muppet.new(muppet_params)

    if @muppet.save
      render json: @muppet, status: :created, location: @muppet
    else
      render json: @muppet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /muppets/1
  def update
    if @muppet.update(muppet_params)
      render json: @muppet
    else
      render json: @muppet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /muppets/1
  def destroy
    @muppet.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_muppet
      @muppet = Muppet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def muppet_params
      params.require(:muppet).permit(:name, :fur_color, :personality, :partner, :image, :show_id)
    end
end
