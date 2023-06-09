class PizzasController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    def index
      pizzas = Pizza.all
      render json: pizzas, except: [:created_at, :updated_at]
    end
  
    def show
      pizza = Pizza.find(params[:id])
      render json: pizza
    rescue ActiveRecord::RecordNotFound
      render json: { error: "Pizza not found" }, status: :not_found
    end
  
    def create
      pizza = Pizza.new(pizza_params)
      if pizza.save
        render json: pizza, status: :created
      else
        render json: { error: "Failed to create pizza" }, status: :unprocessable_entity
      end
    end
  
    def update
      pizza = Pizza.find(params[:id])
      if pizza.update(pizza_params)
        render json: pizza
      else
        render json: { error: "Failed to update pizza" }, status: :unprocessable_entity
      end
    rescue ActiveRecord::RecordNotFound
      render json: { error: "Pizza not found" }, status: :not_found
    end
  
    def destroy
      pizza = Pizza.find(params[:id])
      pizza.destroy
      head :no_content
    rescue ActiveRecord::RecordNotFound
      render json: { error: "Pizza not found" }, status: :not_found
    end
  
    private
    def record_not_found
      render json: { error: 'Record not found' }, status: :not_found
    end
  
    def pizza_params
      params.require(:pizza).permit(:name, :description, :image_url)
    end
  end
  