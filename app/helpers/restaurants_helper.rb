module RestaurantsHelper
    def edit_or_add_restaurant
        if params[:action] == 'edit'
            return "Edit Restaurant"
        else
            return "Add Restaurant"
        end
    end
end
