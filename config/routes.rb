Rails.application.routes.draw do
  resources :members
  resources :shows
  resources :show_hosts
  resources :calendars

  root'show_hosts#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
