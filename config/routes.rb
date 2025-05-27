Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "articles#index"

  resources :articles do
    resources :comments
  end
  
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end
