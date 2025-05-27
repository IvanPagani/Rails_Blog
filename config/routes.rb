Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "articles#index"
  
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  resources :articles
  
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end
