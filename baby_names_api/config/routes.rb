Rails.application.routes.draw do

  resources :lists, only: [:create, :show, :index]
  resources :babies, only: [:create, :index]

end