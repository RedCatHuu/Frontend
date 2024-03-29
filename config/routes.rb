Rails.application.routes.draw do
  root to: 'books#show', id: 1
  resources :books, only: [:show, :create, :update, :destroy]
  get 'menu' => 'books#menu'
  get 'menu_edit' => 'books#menu_edit'
  get 'main' => 'books#main'
  get 'main_edit' => 'books#main_edit'
  get 'main_title_edit' => 'books#main_title_edit'
  get 'main_content_edit' => 'books#main_content_edit'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
