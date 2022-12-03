class RestaurantPizzasController < ApplicationController

    def index
        render json: RestaurantPizza.all, status: :ok
    end

    def show
        restaurant_pizza = RestaurantPizza.find_by(id:params[:id])
        if restaurant_pizza
            render json:
            restaurant_pizza
        else
            render json: {error: "Restaurant Pizza not found"}, status: :not_found
        end
    end
end
