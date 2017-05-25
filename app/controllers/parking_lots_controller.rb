class ParkingLotsController < ApplicationController
  # layout :resolve_layout

  before_action :set_parking_lot, only: [:show, :edit, :update, :destroy]

  # GET /parking_lots
  # GET /parking_lots.json
  def index
    @parking_lots = ParkingLot.all
  end


  # GET /parking_lots/new
  def new
    @parking_lot = ParkingLot.new
  end

  # GET /parking_lots/1/edit
  def edit
  end

  # POST /parking_lots
  # POST /parking_lots.json
  def create
    @parking_lot = ParkingLot.new(parking_lot_params)

    respond_to do |format|
      if @parking_lot.save
        format.html { redirect_to parking_lots_path, notice: 'ParkingLot was successfully created.' }
        format.json { render :show, status: :created, location: @parking_lot }
      else
        format.html { render :new }
        format.json { render json: @parking_lot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parking_lots/1
  # PATCH/PUT /parking_lots/1.json
  def update
    respond_to do |format|
      if @parking_lot.update(parking_lot_params)
        format.html { redirect_to parking_lots_path, notice: 'ParkingLot was successfully updated.' }
        format.json { render :show, status: :ok, location: @parking_lot }
      else
        format.html { render :edit }
        format.json { render json: @parking_lot.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parking_lot
      @parking_lot = ParkingLot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parking_lot_params
      params.require(:parking_lot).permit(:location, :total_floors)
    end

  def resolve_layout
    case action_name
    when 'index'
      'application'
    else
      'empty'
    end
  end
end
