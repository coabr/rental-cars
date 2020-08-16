class CarCategoriesController < ApplicationController
  def index
    @car_categories = CarCategory.all
  end

  def show
    @car_category = CarCategory.find(params[:id]) #params é um HASH {chave => valor}
  end

  def new
    @car_category = CarCategory.new
  end

  def create
    car_category_params = params.require(:car_category).permit(:name, :daily_rate, :car_insurance, :third_party_insurance)
    @car_category = CarCategory.create(car_category_params) # o .create faz um .new e um .save
    redirect_to car_category_path(id: @car_category.id) #toda ação que nao é um GET voce tem que direcionar para algum lugar
  end
end
