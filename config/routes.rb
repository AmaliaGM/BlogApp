Rails.application.routes.draw do
  root 'app#index'

  resources :app
end
