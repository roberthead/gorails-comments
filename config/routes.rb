Rails.application.routes.draw do
  devise_for :users

  resources :posts do
    resources :comments, module: :posts
  end

  root to: 'posts#index'
end
