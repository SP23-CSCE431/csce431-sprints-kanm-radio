Rails.application.routes.draw do
  resources :members
  resources :shows
  resources :show_hosts
  resources :calendars

  resources :djs

  #root'show_hosts#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "members#index"

  get "/members", to: "members#index"
  get "/members/new", to: "members#new"
  post "/members", to: "members#create"
  get "/members/:id", to: "members#show"
  get "/members/:id/edit", to: "members#edit"
  patch "/members/:id", to: "members#update"
  delete "/members/:id", to: "members#destroy"


end
