class RestaurantsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    def index
      restaurants = Restaurant.all
      render json: restaurants, except: [:created_at, :updated_at], status: :ok
    end
  
    def show
      restaurant = Restaurant.find(params[:id])
      render json: restaurant, except: [:created_at, :updated_at], status: :ok
    rescue ActiveRecord::RecordNotFound
      render json: { error: "Restaurant not found" }, status: :not_found
    end
  
    def create
      restaurant = Restaurant.create(restaurant_params)
      render json: restaurant, status: :created
    rescue ActionController::ParameterMissing
      render json: { error: "Restaurant name is required" }, status: :unprocessable_entity
    end
  
    def update
      restaurant = Restaurant.find(params[:id])
      restaurant.update(restaurant_params)
      render json: restaurant, status: :ok
    rescue ActiveRecord::RecordNotFound
      render json: { error: "Restaurant not found" }, status: :not_found
    end
  
    def destroy
      restaurant = Restaurant.find(params[:id])
      restaurant.destroy
      head :no_content
    rescue ActiveRecord::RecordNotFound
      render json: { error: "Restaurant not found"}, status: :not_found
    end
    
    private
    def record_not_found
      render json: { error: 'Record not found' }, status: :not_found
    end
    
    def restaurant_params
    params.require(:restaurant).permit(:name)
    end
    end