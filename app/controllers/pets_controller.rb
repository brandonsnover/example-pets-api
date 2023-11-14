class PetsController < ApplicationController
  def create
    if current_user
      @pet = Pet.create(
        user_id: current_user.id,
        name: params[:name],
        age: params[:age],
        breed: params[:breed],
      )
      render :show
    else
      render json: { message: "must be logged in to create new pets" }
    end
  end

  def update
    @pet = Pet.find_by(id: params[:id])
    if current_user.id == @pet.user_id
      @pet.update(
        name: params[:name] || @pet.name,
        age: params[:age] || @pet.age,
        breed: params[:breed] || @pet.breed,
      )
      render :show
    else
      render json: { message: "can only update your pets" }
    end
  end

  def destroy
    @pet = Pet.find_by(id: params[:id])
    if current_user.id == @pet.user_id
      @pet.destroy
      render json: { message: "Pet destroyed" }
    else
      render json: { message: "must be logged in to destroy pets" }
    end
  end
end
