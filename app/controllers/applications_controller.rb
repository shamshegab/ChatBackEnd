class ApplicationsController < ApplicationController
    before_action :set_app, only: [:show, :update]
    def create   
        application = Application.new(app_params)
        if application.save
            render json: ApplicationSerializer.new(application)
        end
    end

    def show
        render json: ApplicationSerializer.new(@app)
    end
    
    def update
        @app = Application.find_by(token: app_params[:token])
        if @app.update(app_params)
            render json: ApplicationSerializer.new(@app)
        end
    end

    private
    def app_params
        params.permit(:name, :token)
    end

    def set_app
        @app = Application.find_by(token: app_params[:token])
        if @app.blank?
            render json: "Token is invalid", status: 404
        end
    end

end