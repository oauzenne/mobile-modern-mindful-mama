class MilkingsController < ApplicationController
    before_action :define_current_milking
    def index
        render json: Milking.all
    end

    def show
        render json: Milking.find(params[:id]), methods: [ :url ]
    end

    def create
        milking = Milking.new(milking_params)
        milking.mother = current_user
        milking.save
        # render json: milking, methods: [ :url ]
        render json: milking
    end

    def index
        render json: Milking.all
    end

    def show
        render json: current_milking
    end

    def update
        if current_milking == current_milking.mother
            current_milking.update(milking_params)
            render json: current_milking
        else
            render json: {
                error: true,
                message: 'That is not your milking!'
            }
        end
    end

    def destroy
        current_milking.destroy
        render json: current_milking
    end

    def milking_params
        params.permit(:title, :mother_id, :description, :duration)
    end

    def define_current_milking
        if params[:id]
            @current_milking = Milking.find(params[:id])
        else
            @current_milking = Milking.new
        end
    end

    private
    def milking_params
        params.permit(:mother_id, :ounces, :date, :time)
    end
        def current_milking
        @current_milking
    end
end
