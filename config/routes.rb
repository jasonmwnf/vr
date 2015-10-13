Rails.application.routes.draw do
  get 'tour/index'

  get 'welcome/index'

  devise_for :users
  root 'welcome#index'

  get '/compliance' => 'policy#compliance'
  get '/terms-and-conditions' => 'policy#terms'
  get '/privacy-policy' => 'policy#policy'
  get '/contact' => 'policy#contact'

end
