Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :state_orders
  get "products/search"
  resources :products

  resources :billings, only: [] do
    collection do
      get 'pre_pay'
      get 'execute'
    end
  end
  resources :orders, only: :index do
    collection do
      get 'clean'
      get 'historial'

    end
  end
  get 'payment_success/:billing_code' => 'orders#pay_success', as: 'payment_success'
  resources :orders
  resources :categories
  resources :home

  resources :carta
  resources :preguntas
  resources :local
  resources :user_mailer
  resources :contacts, only: [:create, :new]
  # match 'search(/:search)', :to => 'products#search', :as => :search, via: [:get, :post]
  post 'contact/new'
  get 'welcome/contacto'
  root to: "home#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
