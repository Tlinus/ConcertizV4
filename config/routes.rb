Rails.application.routes.draw do
  root 'pages#home'
  
  get 'show' => 'concerts#show'
  get 'new' => 'concerts#new'
  get 'edit' => 'concerts#edit'
  get 'home' => 'pages#home'
  
  get 'genres/new' => 'genres#new'
  get 'artistes/new' => 'artistes#new'
  get 'seances/new' => 'seances#new'
  get 'places/new' => 'places#new'
  get 'typesplaces/new' => 'typesplaces#new'
  
  get 'concerts(.:format)' => 'concerts#index'
  get 'concerts/:id(.:format)' => 'concerts#show'
  get 'concerts/:id(.:format)/edit' => 'concerts#edit'
  get 'concerts/:id(.:format)/delete' => 'concerts#destroy'

  get 'genres(.:format)' => 'genres#index'
  get 'genres/:id(.:format)' => 'genres#show'
  get 'genres/:id(.:format)/edit' => 'genres#edit'
  get 'genres/:id(.:format)/delete' => 'genres#destroy'
  
  get 'artistes(.:format)' => 'artistes#index'
  get 'artistes/:id(.:format)' => 'artistes#show'
  get 'artistes/:id(.:format)/edit' => 'artistes#edit'
  get 'artistes/:id(.:format)/delete' => 'artistes#destroy'
  
  get 'seances(.:format)' => 'seances#index'
  get 'seances/:id(.:format)' => 'seances#show'
  get 'seances/:id(.:format)/edit' => 'seances#edit'
  get 'seances/:id(.:format)/delete' => 'seances#destroy'
  
  get 'typesplaces(.:format)' => 'typesplaces#index'
  get 'typesplaces/:id(.:format)' => 'typesplaces#show'
  get 'typesplaces/:id(.:format)/edit' => 'typesplaces#edit'
  get 'typesplaces/:id(.:format)/delete' => 'typesplaces#destroy'
  
  get 'places(.:format)' => 'places#index'
  get 'places/:id(.:format)' => 'places#show'
  get 'places/:id(.:format)/edit' => 'places#edit'
  get 'places/:id(.:format)/delete' => 'places#destroy'
  
  resources :concerts
  resources :genres
  resources :seances
  resources :artistes
  resources :typesplaces
  resources :places
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end