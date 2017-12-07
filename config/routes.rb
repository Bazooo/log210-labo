Rails.application.routes.draw do
  put 'user_profiles/update'

  get 'user_profiles/edit'

  get 'user_profiles/new'

  get 'launcher/index'
  root 'launcher#index'
  devise_for :users, controllers: { registrations: "registrations"}, :path_prefix => 'my'
  resources :users, except: :create

  post 'create_user' => 'users#create', as: :create_user

  get 'referents/addreforganism' => 'referents#addreforganism', as: :add_ref_organism
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :reforganisms
  resources :addresses
  resources :telephones
  resources :referent_searches
  resources :organisms
  resources :servicepoints
  resources :referents
  resources :rooms
end
