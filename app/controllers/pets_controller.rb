class PetsController < ApplicationController
  def create
    @pet = Pet.create(
      user_id: current_user.id,
      name: params[:name],
      age: params[:age],
      breed: params[:breed],
    )
    render :show
  end
end
