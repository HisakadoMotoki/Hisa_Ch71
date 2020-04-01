Rails.application.routes.draw do
  root to: 'board#index'
  devise_for :users
 # root to: "home#index"
  get 'home/index'
end
