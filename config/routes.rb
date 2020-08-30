Rails.application.routes.draw do
  devise_for :admins
  # ユーザーのルーティング
  root 'web#index'
  get '/about', to: 'web#about'
  get '/contact', to: 'web#contact'
  resources :restaurants, only: [:index, :show]

  # 管理画面のルーティング
  namespace :dashboard do
    root 'top#index'
    resources :restaurants
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
