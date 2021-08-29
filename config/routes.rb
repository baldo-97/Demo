Rails.application.routes.draw do
  get 'sales/index'

  get 'sales/new'

  get 'sales/create'

  get 'sales/edit'

  get 'sales/update'

  post 'sales/delete'

  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #get '/users/new', to: 'users#new'
  #post '/users', to: 'users#create'
  resources :users #, only: [:new, :create] "Only se encarga de definir las partes que necesiteos del CRUD"
  resources :sales
  root 'welcome#index'
end
