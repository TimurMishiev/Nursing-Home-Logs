Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :daily_logs, only: [:show, :index, :new, :create, :edit, :update]

end