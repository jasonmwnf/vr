Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users, :skip => [:registrations]
  }


  post 'users/status' => 'users#status'
  get 'users/outcome' => 'users#outcome'
  get 'users/account' => 'users#account'
  get 'tour/index'
  get 'welcome/index'
  get '/compliance' => 'policy#compliance'
  get '/terms-and-conditions' => 'policy#terms'
  get '/privacy-policy' => 'policy#policy'
  get '/contact' => 'policy#contact'
  get '/tour' => 'tour#index'
  get 'admin/' => 'admin/panel#index'
  resources :videos,  only: [:index, :show]
  resources :models,  only: [:index, :show]
  resources :posts,   only: [:index, :show]
  resources :live_shows, only: [:index]
  namespace :admin do
    resources :models
    resources :users
    resources :videos do
      resources :pictures
    end
    resources :posts
    resources :events
    resources :panel, only: [:index]
  end
end
