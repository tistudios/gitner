Rails.application.routes.draw do
  devise_for :users
  resources :business_entities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:"business_entities#index"
end
