IaApp::Application.routes.draw do
  resources :users
  resources :characters
  resources :sessions, :only => [:new, :create, :destroy]

  match '/signup',  :to => 'users#new'
  
  match '/signin',  :to => 'sessions#new'
  match '/sign_in',  :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'


  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'
  
  match '/newchar', :to => 'characters#new'
  match '/race_info', :to => 'characters#race_info'
  
  root :to => 'pages#home' 
end
