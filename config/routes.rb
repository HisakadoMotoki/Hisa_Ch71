Rails.application.routes.draw do
  root to: 'boards#index'
  devise_for :users
 # root to: "home#index"
  resources :boards
  post 'boards/new', to: 'boards#create'

end
