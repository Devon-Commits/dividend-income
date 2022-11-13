Rails.application.routes.draw do
  devise_for :users
  resources :dividends
  
  get 'home/about'
  root 'home#index'
  #root 'dividends#index'
end
