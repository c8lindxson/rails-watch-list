Rails.application.routes.draw do
  # # ----list
  # get 'lists', to: 'lists#index', as: :lists
  # get 'lists/:id', to: 'lists#show', as: :list
  # get 'lists/new', to: 'lists#new', as: :new_list
  # post 'lists', to: 'lists#create'

  # # ---- bookmark
  # get 'lists/:id/bookmarks/new', to: 'bookmarks#new', as: :new_list_bookmark
  # post 'lists/:id/bookmarks', to: 'bookmarks#create', as: :list_bookmarks
  # delete 'bookmarks/:id', to: 'bookmarks#destroy', as: :bookmark

  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
end
