Rails.application.routes.draw do
  # Show all lists
  get 'lists', to: 'lists#index'
  # Add new movie to list - Create
  get 'lists/new', to: 'lists#new'
  post 'lists', to: 'lists#create'
  # Show single list
  get 'lists/:id', to: 'lists#show', as: 'list'
end
