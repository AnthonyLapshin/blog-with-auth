Rails.application.routes.draw do
  
  resources :registrations, only: %i[new create]
  resources :logins, only: %i[new create]
  get "logout", to: "logins#logout"
  resources :posts, :path => '/'
end
