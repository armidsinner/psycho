Rails.application.routes.draw do
  devise_for :users
  resources :posts
  get 'persons/profile', as: 'user_root'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
