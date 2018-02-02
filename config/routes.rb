Rails.application.routes.draw do

  root to: "users#index"


  #resources :users

  # Sessoes controller
  get 'login', to: "session#new", as: :login
  post 'login', to: "session#create"
  delete 'login', to: "session#destroy", as: :logout

  # Usuarios controller
  get 'users/novo', to: "users#new", as: :new_user #novo é nome não é agumento
  post 'users/novo', to: "users#create" #criando no DB
  get 'users/edit/:id', to: "users#edit", as: :edit_user
  patch 'users/edit/:id', to: "users#update" #acesaar db para alteração pelo form
  get 'users/:id', to: "users#show", as: :show_user #id argumento
  delete 'users/:id', to: "users#destroy", as: :destroy_user
  get 'users', to: "users#index", as: :index_user


end
