Rails.application.routes.draw do

  root to: 'posts#index'
  devise_for :users
  
  
  #member routes used when id / extra route is needed from the model 
  resources :posts do 
    member do  #controller actions to route
      put "like", to: "posts#like"
      put "dislike", to: "posts#dislike"
    end 
  end

  resources :users do
    get 'profile'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
