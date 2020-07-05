Rails.application.routes.draw do

  resources :lists, only: [:create, :show, :index], param: :unique_id
  resources :babies, only: [:create, :index]

end