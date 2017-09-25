class ChargesController < ProtectedController
  before_action :set_charge, only: [:show, :update, :destroy]

  # GET /charges
  def index
    @charges = current_user.charges.all

    render json: @charges
  end

  # GET /charges/1
  def show
    render json: @charge
  end

  # POST /charges
  def create
    @charge = current_user.charges.new(charge_params)

    if @charge.save
      render json: @charge, status: :created, location: @charge
    else
      render json: @charge.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /charges/1
  def update
    if @charge.update(charge_params)
      render json: @charge
    else
      render json: @charge.errors, status: :unprocessable_entity
    end
  end

  # DELETE /charges/1
  def destroy
    @charge.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charge
      @charge = current_user.charges.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def charge_params
      params.require(:charge).permit(:location, :price, :date)
    end
end
