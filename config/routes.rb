Rails.application.routes.draw do
  
  root 'pages#home'
  get 'about', to: 'pages#about'
  
  resources :daily_logs
  get 'signup', to: 'users#new' 

  resources :users, except: [:new] 
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :individual_vitals_logs
  resources :individuals, except: [:destroy]  do 
    resources :individual_vitals_logs, only: [:new, :index, :show]
  end 

  

  resources :daily_activities, except: [:destroy]


end