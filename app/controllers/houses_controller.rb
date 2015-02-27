class HousesController < ApplicationController
  def index
    @houses = House.all
    @house = House.new
    @pet = Pet.new
  end

  def show
    @house = House.find(params[:id])
  end
end
