Rails.application.routes.draw do
  root to: 'root#index'

  devise_for :users

  resources :lists do
    resources :comments
    resources :choices do
      post 'vote', on: :member
    end
  end

  resources :users, :admin
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
