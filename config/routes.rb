Rails.application.routes.draw do
  root to: 'board#index'
  devise_for :users
 # root to: "home#index"
  resources :board
  post 'board/new', to: 'board#create'

end
