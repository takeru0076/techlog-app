Rails.application.routes.draw do
  devise_for :users
  root 'home#top'

  resources :posts, only: %i[new create]

  get "up" => "rails/health#show", as: :rails_health_check
end
