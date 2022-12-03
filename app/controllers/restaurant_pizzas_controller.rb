class RestaurantPizzasController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

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


        private

        def restaurant_pizza_params
            params.permit(:pizza_id, :price, :restaurant_id)
        end

        def render_unprocessable_entity_response(exception)
            render json: {errors: exception.record.errors.full_messages }, status: :unprocessable_entity
        end
    end
end
