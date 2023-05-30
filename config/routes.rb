# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'tailwindcss/:anything', to: redirect('/')

  get 'tasks', to: 'tasks#index'
  post 'tasks', to: 'tasks#create', as: 'create_task'
  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  delete 'tasks/:id', to: 'tasks#destroy', as: 'destroy_task'
  patch 'tasks/:id', to: 'tasks#update', as: 'update_task'
end
