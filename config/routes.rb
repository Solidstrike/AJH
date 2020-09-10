Rails.application.routes.draw do
  resources :invoices
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  root to: 'pages#home'
  match 'users' => 'users#show', via: :get

  
get 'about', to: 'pages#about' 
get 'faq', to: 'pages#faq' 

resources :projects

resources :new_project_requests do
  member do
    post :accept
    post :decline
  end
end
resources :reviews
resources :posts
resources :contacts, only: [ :new, :create, :thanks ]


# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

