Rails.application.routes.draw do
  devise_for :users
  get '/', to: 'rooms#index'
  get '/rooms/new'
  post '/rooms/show'
  get 'reservations/index'
  get 'reservations/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :rooms
  resources :reservations,only: [:index, :new, :create] do
    collection do
      post:confirm
    end
  end
end
