Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :trainers
  resources :trainers
  resources :pokemons
  patch 'capture', to: 'pokemons', as: :capture
  patch 'damage', to: 'pokemons', as: :damage
end
