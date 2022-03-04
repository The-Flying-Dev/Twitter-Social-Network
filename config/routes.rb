Rails.application.routes.draw do

  root to: 'posts#index'
  devise_for :users

  resources :posts
    resources :users do
  end

  resources :users do
    get 'profile'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
