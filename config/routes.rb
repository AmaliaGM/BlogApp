Rails.application.routes.draw do
  root 'post#index'

  resources :post, :user
end
