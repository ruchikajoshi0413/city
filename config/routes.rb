Rails.application.routes.draw do
  resources :ruchikas
  resources :sproducts
  mount Ckeditor::Engine => '/ckeditor'
  resources :stateproduct2s
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'welcomes/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'welcomes#index'

  get 'sproducts/pdf/:id', to:'sproducts#pdf',as: 'sproducts_pdf'
  
end
