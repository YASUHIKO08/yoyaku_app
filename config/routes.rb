Rails.application.routes.draw do
  devise_for :users
  devise_scope :users do
    get '/users/account', to: 'users#account', as: :user_account
    get '/users/profile', to: 'users#profile', as: :user_profile
    get '/users/profile/edit', to: 'users#edit', as: :user_profile_edit
    patch '/users/update', to: 'users#update' , as: :user_profile_update
  end

  get '/', to: 'rooms#search'
  get '/rooms/index'
  get '/rooms/own'
  get '/rooms/new'
  post '/rooms/show'
  get 'reservations/index'
  get 'reservations/new'
  get 'reservations/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :rooms do
    collection do
      get:search
    end
  end
  resources :reservations do
    collection do
      post:confirm
    end
  end
end
