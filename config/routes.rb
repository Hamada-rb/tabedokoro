Rails.application.routes.draw do
  root 'web#index'
  get '/about', to: 'web#about'
  get '/contact', to: 'web#contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
