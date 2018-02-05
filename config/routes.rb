Rails.application.routes.draw do

  resources :reached_goal_floats
  resources :performed_goal_floats
  resources :projection_goal_floats
  resources :goal_floats
  resources :reached_goal_ints
  resources :performed_goal_ints
  resources :projection_goal_ints
  resources :goal_ints
  resources :unities
  resources :progress_projects
  resources :tasks
  resources :projects
  resources :notifications
  resources :teams
  resources :offices
  root to: "users#index"
  #resources :users

  # Redefinir senha controller
  get 'redefine_password/search', to: "redefine_password#search", as: :redefine_password
  post 'redefine_password/search', to: "redefine_password#recuperar"

  # Offices controller
  post 'offices/new', to: "offices#create"

  # GoalIntegersController
  get 'goalints/report', to: "goalints#report", as: :goal_in

  # Teams controller
  get 'teams', to: "teams#index", as: :teams_user
  post 'teams/new', to: "teams#create"
  patch 'teams/:id/edit', to: "teams#update" #acesaar db para alteração pelo form


  # Sessoes controller
  get 'login', to: "session#new", as: :login
  post 'login', to: "session#create"
  delete 'login', to: "session#destroy", as: :logout

  # Usuarios controller
  #get 'users/teams', to: "teams#index", as: :teams_user
  #post 'teams/new', to: "teams#create"
  #patch 'teams/edit/:id', to: "teams#update" #acesaar db para alteração pelo form

  patch 'buscateams', to: "users#buscateams", as: :buscateams
  get 'users/novo', to: "users#new", as: :new_user #novo é nome não é agumento
  post 'users/novo', to: "users#create" #criando no DB
  get 'users/edit/:id', to: "users#edit", as: :edit_user
  patch 'users/edit/:id', to: "users#update" #acesaar db para alteração pelo form
  get 'users/:id', to: "users#show", as: :show_user #id argumento
  delete 'users/:id', to: "users#destroy", as: :destroy_user
  get 'users', to: "users#index", as: :index_user


end
