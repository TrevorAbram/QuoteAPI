Rails.application.routes.draw do
  get 'quotes/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Routes for quotes

  resources :quotes
end
