Rails.application.routes.draw do
  root 'pages#home'
  
  get '/concerts(.:format)' => 'concerts#index'
  get 'concerts/:id(.:format)' => 'concerts#show'
  get 'show' => 'concerts#show'
  get 'new' => 'concerts#new'
  get 'create' => 'concerts#create'
  get 'edit' => 'concerts#edit'
  
  resources :concerts
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end