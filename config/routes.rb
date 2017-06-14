Rails.application.routes.draw do
  resources :profiles
  resources :catalogs
  root 'home#index'
end
