class MothersController < ApplicationController
    skip_before_action  :logged_in?, only: [ :authenticate ]
    
    def create
        mother = Mother.create(mother_params)
        render json: mother
    end
    
    def index
        render json: Mother.all
    end
    
    def show
        render json: selected_mother
    end

    def authenticate
        mother = Mother.find_by(name: params[:name])
        
        if mother.authenticate(params[:password])
            render json: mother, methods: [ :auth_token ]
        else
            render json: { error: true, message: 'Sorry, Mama, your login failed. Please try again.' }
        end
    end
    
    def update
        selected_mother.update(mother_params)
        render json: selected_mother
    end
    
    def destroy
        selected_mother.destroy
        render json: selected_mother
    end
    
    def mother_params
        params.permit(:name, :password)
    end
    
    def define_selected_mother
        if params[:id]
            @selected_mother = Mother.find(params[:id])
        else
            @selected_mother = Mother.new
        end
    end
    
    def selected_mother
        @selected_mother
    end
end

