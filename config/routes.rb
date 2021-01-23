Rails.application.routes.draw do
  devise_for :users
  root to: "reviews#index"
  resources :reviews do
   resources :comments, only: [:create, :edit, :destroy]
  end
  resources :users, only: :show
  post 'book/:id' => 'books#create', as: 'create_book'
  delete 'book/:id' => 'books#destroy', as: 'destroy_book'
end
