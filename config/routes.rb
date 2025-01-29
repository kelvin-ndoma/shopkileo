Rails.application.routes.draw do
  namespace :admin do
    resources :orders
    resources :products do
      resources :stocks
    end
      resources :categories
  end
  devise_for :admins

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # Public root
  root "home#index"

  # Admin-specific root for authenticated admins
  authenticated :admin_user do
    root to: "admin#index", as: :admin_root
  end

  # Admin dashboard
  get "admin" => "admin#index"
end
