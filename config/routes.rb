Rails.application.routes.draw do
  resources :dashboards, only: %i[index]
  resources :registrations, only: %i[new create]
  resources :logins, only: %i[new create]
end
