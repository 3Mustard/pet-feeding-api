class Api::V1::PetsController < ApplicationController
  def index
    render json: Pet.all
  end

  def alertsIndex
    pets = Pet.all 
    time = Time.new 
    alerts = []

    pets.each do |pet| 
      next_feeding = pet.next_feeding
      
    end 

  end 

  def create
    newPet = Pet.new(pet_params)
    newPet.save

    render json: newPet
  end

  def update
    pet = Pet.find_by(id: params[:id])
    pet.update(pet_params)
    pet.save

    render json: pet
  end

  def destroy
    pet = Pet.find_by(id: params[:id])
    pet.destroy
  end

  private

  def pet_params
    params.require(:pet).permit(:name,:gender,:last_fed,:next_feeding)
  end
end