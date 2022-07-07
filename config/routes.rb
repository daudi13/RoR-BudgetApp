Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :categories, only: [:index, :show, :new, :create, :destroy] do
    resources :transacts, only: [:new, :create, :destroy]
  end

  resources :splash, only: [:index]
  root 'splash#index'
end
