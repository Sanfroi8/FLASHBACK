Rails.application.routes.draw do
  resources :souvenirs
  resources :users 
  root "souvenirs#index"

  devise_for :user, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }
end
