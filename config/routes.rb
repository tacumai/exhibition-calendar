Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"
  
  # exhibitions
  get "/exhibitions" => "exhibitions#index"
  get "/exhibitions/new" => "exhibitions#new"
  
  # museums
  resources :museums, except: :index
end
