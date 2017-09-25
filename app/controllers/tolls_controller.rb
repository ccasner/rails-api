class TollsController < ApplicationController
  before_action :set_toll, only: [:show, :update, :destroy]

  # GET /tolls
  def index
    @tolls = Toll.all

    render json: @tolls
  end

  # GET /tolls/1
  def show
    render json: @toll
  end

  # POST /tolls
  def create
    @toll = Toll.new(toll_params)

    if @toll.save
      render json: @toll, status: :created
    else
      render json: @toll.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tolls/1
  def update
    if @toll.update(toll_params)
      render json: @toll
    else
      render json: @toll.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tolls/1
  def destroy
    @toll.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toll
      @toll = Toll.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def toll_params
      params.require(:toll).permit(:location, :price)
    end
end
