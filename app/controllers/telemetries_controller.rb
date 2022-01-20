class TelemetriesController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        @telemetries = Telemetry.all
        render json:   @telemetries
    end
    def show
    end
    def create
        @telemetry = Telemetry.new(telemetry_params)

        if @telemetry.save 
            render json: @telemetry, status: :created, location: @telemetry 
        else
            render json: @telemetry.errors, status: :unprocessable_entity
        end

    end

    private 

    def telemetry_params
        params.permit(:speed, :mode, :bike_id)
    end
    
end
