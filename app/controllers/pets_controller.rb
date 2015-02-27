class PetsController < ApplicationController
  before_action :find_and_set_house

  def index
    @pets = @house.pets
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = @house.pets.new(pet_params)
    if @pet.save
      redirect_to house_path(params[:house_id])
    else
      render :new
    end
  end

  private

  def pet_params
    params.require(:pet).permit(:name)
  end

  def find_and_set_house
    @house = House.find(params[:house_id])
  end
end
