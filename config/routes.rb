Rails.application.routes.draw do

  resources :utilisateurs

  root 'pages#index'
  get 'utilisateurs/new'
  get 'pages/index'
  get 'pages/aide'
  get 'pages/contact'
  root to: 'pages#index', as: 'home'
  delete 'logout' => 'sessions#destroy', as: :logout
  get 'login' => 'sessions#new', as: :login

  get 'home' => 'pages#index'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'
  get 'aide' => 'pages#aide'
  get 'signup' => 'utilisateurs#new'


  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

  get '/search', to: "articles#search"


  resources :articles, only: [:create, :destroy, :new, :show]


end
