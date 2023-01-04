Rails.application.routes.draw do
  resources :posts
  #resources :dashboards, only: %i[index]
  resources :registrations, only: %i[new create]
  resources :logins, only: %i[new create]
  get "logout", to: "logins#logout"
end
