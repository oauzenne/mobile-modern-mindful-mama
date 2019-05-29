class ApplicationController < ActionController::API

    attr_reader :current_user

    before_action :logged_in?

    def logged_in?
        puts request.headers['Authorization']
        begin 
            token = request.headers['Authorization'].split(' ')[1]
            
            payload = JWT.decode(token, '9885ea7895518eaf88c4a8a2e8f62c82')[0]
            puts token
            puts payload


            @current_user = Mother.find(payload['id'])

            if @current_user
                return true
            else
                render json: {
                    error: true,
                    message: 'User does not exist'
                }
            end
        rescue 
            render json: {
                error: true,
                message: 'Invalid Authentication'
            }
        end
    end

end
