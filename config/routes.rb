Rails.application.routes.draw do
  root 'user#index'

  resources :user, only: %i[new index show] do
    resources :post, only: %i[new index show]
    resources :comment, only: %i[new index]
  end

  resources :posts do
    resources :likes
  end

end
