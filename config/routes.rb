Rails.application.routes.draw do
  resources :articles, only:[:new, :create]
  get 'articles/search' => 'articles#search'
  resources :inquiries, only:[:new, :create]
  resources 'sample'
  resources :todolists do 
   resources :likes, only:[:create, :destroy]
  end
  get 'todolists/new'
  get 'top' => 'homes#top'

  patch 'todolists/:id' => 'todolists#update', as: 'update_todolist'
  delete 'todolists/:id' => 'todolists#destroy', as: 'destroy_todolist'
end
