Rails.application.routes.draw do
  root 'app#index'

  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show]
end
