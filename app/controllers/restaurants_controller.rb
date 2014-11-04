class RestaurantsController < ApplicationController
    def index
        @restaurants = Restaurant.all
    end

    def welcome
        respond_to do |format|
            format.js
        end
    end

    def show
        @restaurant = Restaurant.find(params[:id])
        respond_to do |format|
            format.js
        end
    end

    def new
        @restaurant = Restaurant.new
        respond_to do |format|
            format.js
        end
    end

    def create
        @restaurant = Restaurant.new restaurant_params

        if @restaurant.save
            redirect_to restaurants_path
        else
            render action: 'new'
        end
    end

    def edit
        @restaurant = Restaurant.find(params[:id])
        respond_to do |format|
            format.js
        end
    end

    def update
        @restaurant = Restaurant.find(params[:id])

        if @restaurant.update restaurant_params
            respond_to do |format|
                format.js
            end
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
