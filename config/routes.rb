Rails.application.routes.draw do
  root to: 'home#index'

  resources :car_categories #, only: [:index, :show, :new, :create, :edit, :update, :destroy] usa isso quando quiser abreviar as rotas, como estamos usando todas, nao tem mais utilidade
end

