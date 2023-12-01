class FatherPetsController < ApplicationController
  def index
    @father_pets = FatherPet.all
  end

  def show
    @father_pet = FatherPet.find(params[:id])
  end

  def new
    @father_pet = FatherPet.new
  end

  def create
    @father_pet = FatherPet.new(father_pet_params)

    if @father_pet.save
      redirect_to father_pets_path, notice: '登録完了しました'
    else
      render :new
    end
  end

  def edit
    @father_pet = FatherPet.find(params[:id])
  end

  private

  def father_pet_params
    params.require(:father_pet).permit(:name, :color, :birthday, :image_path, :memo)
  end
end
