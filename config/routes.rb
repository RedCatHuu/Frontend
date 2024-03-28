Rails.application.routes.draw do
  root to: 'books#show', id: 1
  resources :books, only: [:show, :create, :edit, :update, :destroy]
  get 'menu_edit' => 'books#menu_edit'
  get 'title_edit' => 'books#title_edit'
  get 'content_edit' => 'books#content_edit'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
