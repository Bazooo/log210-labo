Rails.application.routes.draw do
  get 'launcher/index'
  root 'launcher#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :organismes #plural
  resources :adresses
  resources :telephones
end
