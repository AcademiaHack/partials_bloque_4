class FloorsController < ApplicationController
	def index
		@parking_lot= ParkingLot.find(params[:parking_lot_id])
		@floors = @parking_lot.floors
	end
end
