class RestaurantsController < ApplicationController
    def index
        @restaurants = Restaurant.all
    end

    def show
        @restaurants = Restaurant.all
        @restaurant = Restaurant.find(params[:id])
    end

    def new
        @restaurants = Restaurant.all
        @restaurant = Restaurant.new
    end

    def create
        @restaurants = Restaurant.all
        @restaurant = Restaurant.new restaurant_params

        if @restaurant.save
            redirect_to @restaurant
        else
            render action: 'new'
        end
    end

    def edit
        @restaurants = Restaurant.all
        @restaurant = Restaurant.find(params[:id])
    end

    def update
        @restaurants = Restaurant.all
        @restaurant = Restaurant.find(params[:id])

        if @restaurant.update restaurant_params
            redirect_to @restaurant
        else
            render action: 'edit'
        end
    end

    def destroy
        @restaurant = Restaurant.find(params[:id])
        @restaurant.destroy
        redirect_to restaurants_path

    end

    private
    def restaurant_params
        params.require(:restaurant).permit(:name, :description, :street, :city, :state, :zipcode, :phonenumber)
    end
end
