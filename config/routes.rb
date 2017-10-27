Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  resources :trainers
  patch '/capture', to:"pokemons#capture"
  patch '/damage', to: "pokemons#damage"
  patch '/heal', to: "pokemons#heal"
  get 'pokemons/new', to: "pokemons#new"
  post 'pokemons', to: "pokemons#create"
end
