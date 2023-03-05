Rails.application.routes.draw do
 oauth_test
  get 'users/sign_in', to: 'devise/sessions#new'

  # devise_for :users
  resources :officers
  resources :members
  resources :shows
  resources :show_hosts
  resources :calendars

  resources :djs

  #root'show_hosts#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"





  root "pages#home"
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  get "/members", to: "members#index"
  get "/members/new", to: "members#new"
  post "/members", to: "members#create"
  get "/members/:id", to: "members#show"
  get "/members/:id/edit", to: "members#edit"
  patch "/members/:id", to: "members#update"
  delete "/members/:id", to: "members#destroy"


end
