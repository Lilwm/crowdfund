Rails.application.routes.draw do
  resources :donations
  resources :request_donations
  
  get  'home/about'
  root 'home#index'
  #get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
