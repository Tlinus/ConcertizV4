Rails.application.routes.draw do
 

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout
  root 'pages#home'
  
  get 'show' => 'concerts#show'
  get 'new' => 'concerts#new'
  get 'edit' => 'concerts#edit'
  get 'home' => 'pages#home'
  
  get 'concerts(.:format)' => 'concerts#index'
  get 'concerts/:id(.:format)' => 'concerts#show'
  get 'concerts/:id(.:format)/edit' => 'concerts#edit'
  get 'concerts/:id(.:format)/delete' => 'concerts#destroy'
  
  get 'genres/new' => 'genres#new'

  
  get 'genres(.:format)' => 'genres#index'
  get 'genres/:id(.:format)' => 'genres#show'
  get 'genres/:id(.:format)/edit' => 'genres#edit'
  get 'genres/:id(.:format)/delete' => 'genres#destroy'
  
  resources :concerts
  resources :genres
  resources :artistes
  resources :typesplaces
  resources :places
  resources :users
  resources :user_sessions
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end