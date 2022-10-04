Rails.application.routes.draw do
  resources :articles, only: [:index, :show]

  #  This controller has one action, create, which we'll map in routes.rb for POST requests to /login:
  post "/login", to: "sessions#create"

  # The log out flow is even simpler. We can add a new route for logging out:
  delete "/logout", to: "sessions#destroy"

  # we need a route to retrieve the user's data from the database using the session hash:
  get "/me", to: "users#show"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
