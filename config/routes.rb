Grill::Application.routes.draw do

  resources :reservations

  get "sessions/new", :as => 'login'
  post "sessions" => 'sessions#create'

  get "logout" => 'sessions#destroy', :as => 'logout'

  resources :users

  root to: 'pages#home'
  get '/menu' => 'pages#menu', as: 'menu'
  
  
  get '/mockup/home' => 'mockup#home'
  get '/help' => 'mockup#help'
  get "/location" => 'mockup#location', as: 'location'
  get "/menu" => 'mockup#menu'
  get "/orders/new" => 'mockup#ordering', as: 'new_order'
  get "/reservations/new" => 'mockup#reservations', as: 'new_reservation'
end
