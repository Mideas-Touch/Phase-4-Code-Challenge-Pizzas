class RestaurantPizzasController < ApplicationController
# rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        render json: RestaurantPizza.all
    end

    def create
        restaurant_pizza = RestaurantPizza.create!(restaurant_pizza_params)
        render json: restaurant_pizza.pizza, status: :created
    end

    def show
        restaurant_pizza = RestaurantPizza.find_by(id:params[:id])
        if restaurant_pizza
            render json: restaurant_pizza
        else
            render json: {error: "Restaurant Pizza not found"}, status: :not_found
        end

    end
end
