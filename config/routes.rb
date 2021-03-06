Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end

  root to: "reviews#index"
  
  resources :reviews do
   resources :comments, only: [:create, :destroy]
  end

  resources :users, only: :show
  post 'book/:id' => 'books#create', as: 'create_book'
  delete 'book/:id' => 'books#destroy', as: 'destroy_book'
end
