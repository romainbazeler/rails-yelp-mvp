class RestaurantsController < ApplicationController
    # GET /restaurants
  def index
    @restaurants = Restaurant.all
  end

    # GET /restaurants/1
  def show
    @restaurant = Restaurant.find(params[:id])
   end

    # GET /restaurants/new
   def new
    @restaurant = Restaurant.new
  end

  # POST /restaurants
  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant was successfully created.'
    else
      render :new
    end
  end
end



  # She/He can add a new restaurant, and be redirected to the show view of that new restaurant.
  # GET "restaurants/new"
  # POST "restaurants"
  # She/He can see the details of a restaurant, with all the reviews related to the restaurant.
  # GET "restaurants/38"
  # She/He can add a new review to a restaurant
  # GET "restaurants/38/reviews/new"
  # POST "restaurants/38/reviews"
  # And that’s it!
  
