class CommonProbsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        render json: Location.all
    end

    def show
        render json: Location.find(params[:id]), methods: [ :url ]
    end

    def create
        location = Location.create(location_params)
        render json: location, methods: [ :url ]
    end

    def index
        render json: Location.all
    end

    def show
        render json: current_location
    end

    def update
        if current_location == current_location.mother
            current_location.update(location_params)
            render json: current_location
        else
            render json: {
                error: true,
                message: 'That is not your location'
            }
        end
    end

    def destroy
        current_location.destroy
        render json: current_location
    end

    def location_params
        params.permit(:title, :mother_id, :description, :duration)
    end

    def define_current_location
        if params[:id]
            @current_location = Location.find(params[:id])
        else
            @current_location = Location.new
        end
    end

    private
    def location_params
        params.require(:location).permit(:mother_id, :title, :description, :likes, :duration, :created_at, :motherFile)
    def current_location
        @current_location
    end
end
