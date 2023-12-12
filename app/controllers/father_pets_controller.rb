class FatherPetsController < ApplicationController
  before_action :set_father_pet, only: [:show, :edit, :update, :destroy]

  def index
    @father_pets = FatherPet.all
  end

  def show
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
  end

  def update
    if @father_pet.update(father_pet_params)
      redirect_to father_pets_path, notice: '更新完了しました'
    else
      render :edit
    end
  end

  def destroy
    @father_pet.destroy
    redirect_to father_pets_path, notice: '削除完了しました'
  end

  private

  def set_father_pet
    @father_pet = FatherPet.find(params[:id])
  end

  def father_pet_params
    params.require(:father_pet).permit(:name, :color, :birthday, :image_path, :memo)
  end
end