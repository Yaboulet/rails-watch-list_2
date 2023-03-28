Rails.application.routes.draw do
  root to: "pages#home"
  get 'pages/home'
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'bookmarks/delete'
  get 'lists/index'
  get 'lists/show'
  get 'lists/new'
  get 'lists/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  # Defines the root path route ("/")
  # root "articles#index"
  end
  resources :bookmarks, only: [:destroy]
end
