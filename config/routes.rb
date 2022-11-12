Rails.application.routes.draw do
  devise_for :users
  resources :dividends
  root 'home#index'
  get 'home/about'
  get 'dividends/dividend'
end
