Rails.application.routes.draw do
  # get 'lists/:id/bookmarks/new', to: "bookmarks#new"
  # get 'lists/:id/bookmarks/:id/destroy', to: "bookmarks#destroy"
  # get 'lists/index'
  # get 'lists/show'
  # get 'lists/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # TODO: nest resources
  resources :lists, only: [:index, :show, :new, :create, :destroy] do
    resources :bookmarks, only: [:new, :create, :destroy]
  end
end
