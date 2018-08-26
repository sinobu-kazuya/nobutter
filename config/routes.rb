Rails.application.routes.draw do
  devise_for :users
  root to: "tweets#index"
  resources :users
  resources :tweets

  post   '/like/:tweet_id' => 'likes#like',   as: 'like'
  delete '/like/:tweet_id' => 'likes#unlike', as: 'unlike'
end
