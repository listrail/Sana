Rails.application.routes.draw do
  resources :weights
  devise_for :users
  root "weights#index"

  get "about" => "pages#about"
  get "weights" => "pages#weights"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
