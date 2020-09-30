Rails.application.routes.draw do
  resources :victims
  devise_for :users
  root "crimes#index"
  resources :thiefs 
  resources :crimes
  get 'newcrimethief', to: "crime_thiefs#new", as: 'new'
  resources :crime_thiefs

  resources :users

    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
