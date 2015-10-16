Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users

  get 'tour/index'
  get 'welcome/index'
  get '/compliance' => 'policy#compliance'
  get '/terms-and-conditions' => 'policy#terms'
  get '/privacy-policy' => 'policy#policy'
  get '/contact' => 'policy#contact'
  get '/tour' => 'tour#index'

  resources :videos,  only: [:index, :show]
  resources :models,  only: [:index, :show]
  resources :posts,   only: [:index, :show]

  namespace :admin do
    resources :models
    resources :users
    resources :pictures # did not add view
    resources :videos
    resources :posts
  end
end
