Rails.application.routes.draw do
  namespace :dashboard do
    root 'top#index'
  end
  root 'web#index'
  get '/about', to: 'web#about'
  get '/contact', to: 'web#contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
