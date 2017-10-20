Rails.application.routes.draw do
  get 'launcher/index'
  root 'launcher#index'
  devise_for :users, controllers: { registrations: "registrations"}, :path_prefix => 'my'
  resources :users, except: :create

  post 'create_user' => 'users#create', as: :create_user
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :organismes #plural
  resources :adresses
  resources :telephones
end
