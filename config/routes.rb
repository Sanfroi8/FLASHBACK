Rails.application.routes.draw do
  devise_for :users
  resources :souvenirs
  root "souvenirs#index"
end
