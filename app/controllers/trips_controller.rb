class TripsController < ApplicationController
    def create
        @vehicle = Vehicle.find(params[:vehicle_id])
        @trip = @vehicle.trips.create(trip_params)
        redirect_to vehicle_path(@vehicle)
      end

      def new
        @vehicle = Vehicle.find(params[:vehicle_id])
        @trip=Trip.new
        # redirect_to new_vehicle_trip_path(@vehicle)
      end

      def show
        @vehicle = Vehicle.find(params[:vehicle_id])
        @trip=@vehicle.trips.find(params[:id])
        # redirect_to vehicle_trip_path(@trip)
      end

      def edit
        binding.pry
        @vehicle = Vehicle.find(params[:vehicle_id])
        @trip=@vehicle.trips.find(params[:id])
        # redirect_to edit_vehicle_trip_path(@vehicle)
      end
  
      def destroy
        @vehicle = Vehicle.find(params[:vehicle_id])
        @trip = @vehicle.trips.find(params[:id])
        @trip.destroy
        redirect_to vehicle_path(@vehicle), status: 303
      end
    
      private
        def trip_params
          params.require(:trip).permit(:trip_number, :distance, :fuel_consumption)
        end
end



