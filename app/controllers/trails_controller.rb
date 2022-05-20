class TrailsController < ApplicationController
    def index 
        @trails = Trail.all

        render json: @trails
    end

    def show 
        @trail = Trail.find(params[:id])

        render json: @trail
    end

    def create 
        @trail = Trail.create(name: params[:name], state: params[:state])

        render json: @trail
    end

    def update 
        @trail = Trail.find(params[:id])
        @trail.update(name: params[:name], state: params[:state])

        render json: "#{@trail.name} has been updated"
    end

    def destroy 
        @trail = Trail.find(params[:id])
        @trail.destroy

        render json: "#{@trail.name} has been deleted"
    end
end
