Rails.application.routes.draw do
  get 'admin' => 'admin#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy 
  end

  # get 'sessions/new'

  # get 'sessions/create'

  # get 'sessions/destroy'

  resources :users
  resources :destinations
  resources :flits
  resources :categories
  resources :products

  root "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
