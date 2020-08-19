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
    @car_category = CarCategory.new(car_category_params) # o .create! faz um .new e um .save
    if @car_category.save
      redirect_to (@car_category) #toda ação que nao é um GET voce tem que direcionar para algum lugar // nao precisa do id, porque o ruby preenche automaticamente quando temos um objeto como parametro // nao precisa da rota porque o ruby entende que se quero mostrar um objeto vou ter que redirecionar para o path de #show desse object
    else 
      render :new # nao roda a action do new, roda a view do new e continua no create
    end
  end

  private # tudo que está daqui pra baixo não é uma action, é um método

  def car_category_params
    params.require(:car_category)
          .permit(:name, :daily_rate, :car_insurance, :third_party_insurance)
  end
end
