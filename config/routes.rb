Rails.application.routes.draw do
  get 'categories/index'
  get 'categories/create'
  get 'categories/show'
  get 'categories/update'
  get 'categories/destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :categories

  get 'category_items', to: 'categories#category_items'

  resources :items

  patch 'items/:id', to: 'articles#update'
end
