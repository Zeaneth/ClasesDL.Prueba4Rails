Rails.application.routes.draw do
  root to: 'tasks#index'

  resources :tasks do
    resources :todos, only: :create
  end
  get 'tasks/:id/ranking', to: 'tasks#ranking', as: 'tasks_ranking'

  resources :todos, only: :index
  
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
