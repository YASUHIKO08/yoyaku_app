Rails.application.routes.draw do
  devise_for :users
  get '/', to: 'rooms#index'
  get 'rooms', to: 'rooms#index'
  get '/rooms/new'
  get '/rooms/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :rooms
end
