class Api::V1::PetsController < ApplicationController
  def index
    render json: Pet.order(:created_at)
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
    petID = pet.id
    pet.destroy

    render json: petID
  end

  private

  def pet_params
    params.require(:pet).permit(:name,:gender,:last_fed,:next_feeding)
  end
end