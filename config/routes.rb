Rails.application.routes.draw do

  resources :tasks do
    resources :todos, only: :create
  end

  resources :todos, only: :index
  
  devise_for :users

  root to: 'tasks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
