Rails.application.routes.draw do
  devise_for :users
  root to: "tweets#index"
  resources :users do
    member do
     get :following, :followers
    end
  end
  resources :tweets do
    resources :comments, only: [:create, :destroy]
  end
  resources :relationships, only: [:create, :destroy]
  post   '/like/:tweet_id' => 'likes#like',   as: 'like'
  delete '/like/:tweet_id' => 'likes#unlike', as: 'unlike'
end
