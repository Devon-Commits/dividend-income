Rails.application.routes.draw do
  resources :dividends
  root 'home#index'
  get 'home/about'
end
