Rails.application.routes.draw do
  devise_for :users
  root 'favorite_places#index'
  resources :favorite_places, only: [:index, :show, :new, :create, :destroy]

  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
end
