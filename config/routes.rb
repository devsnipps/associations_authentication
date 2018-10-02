Rails.application.routes.draw do
  get 'contacts/new'

  get 'contacts/create'

  get 'contacts/update'

  get 'contacts/destroy'

  get 'contacts/edit'

  get 'admin' => 'admin#index'

  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy 
  end

  # get 'sessions/new'

  # get 'sessions/create'

  # get 'sessions/destroy'

  resources :users do
    resources :emergencies, controller: :contacts, type: "Emergency"
    resources :friends, controller: :contacts, type: "Friend"
  end
  resources :destinations
  resources :flits
  resources :categories
  resources :products

  root "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
